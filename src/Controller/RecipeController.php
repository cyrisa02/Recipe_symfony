<?php

namespace App\Controller;

use App\Entity\PostLike;
use App\Entity\Recipe;
use App\Form\RecipeType;
//use App\Entity\Ingredient;
use App\Repository\RecipeRepository;
use App\Entity\Recipe as EntityRecipe;
use App\Repository\PostLikeRepository;
use Doctrine\ORM\EntityManagerInterface;
//use Doctrine\Persistence\ObjectManager;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class RecipeController extends AbstractController
{
    /**
     * This controller displays all recipes.
     */

    /**
     * @Route("/recette", name="recipe.index", methods={"GET"})
     */
    public function index(
        RecipeRepository $repository,
        PaginatorInterface $paginator,
         Request $request
         ): Response {
        $recipes = $paginator->paginate(
            $repository->findAll(), /* query NOT result */
            $request->query->getInt('page', 1), /*page number*/
            10 /*limit per page*/
        );

        return $this->render('pages/recipe/index.html.twig', [
            'recipes' => $recipes,
        ]);
    }


    /**
     * This controller creates a recipe.
     */

    /**
     * @Route("/recette/creation", name="recipe.new", methods={"GET", "POST"})
     *  
     * 
     */
    public function new(Request $request, EntityManagerInterface $manager): Response
    {
        $recipe = new Recipe();
        $form = $this->createForm(RecipeType::class, $recipe);

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $recipe = $form->getData();
           // $recipe->setUser($this->getUser());

            $manager->persist($recipe);
            $manager->flush();

            $this->addFlash(
                'success',
                'Votre recette a été créé avec succès !'
            );

            return $this->redirectToRoute('recipe.index');
        }

        return $this->render('pages/recipe/new.html.twig', [
            'form' => $form->createView()
        ]);
    }

    /**
     * This controller edits a recipe.
     */

    /**
     * @Route("/recette/edition/{id}", name="recipe.edit", methods={"GET", "POST"})
     *  
     * 
     */

    public function edit(
        Recipe $recipe,
        Request $request,
        EntityManagerInterface $manager
    ): Response {
        $form = $this->createForm(RecipeType::class, $recipe);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $recipe = $form->getData();

            $manager->persist($recipe);
            $manager->flush();

            $this->addFlash(
                'success',
                'Votre recette a été modifié avec succès !'
            );

            return $this->redirectToRoute('recipe.index');
        }

        return $this->render('pages/recipe/edit.html.twig', [
            'form' => $form->createView()
        ]);
    }

/**
     * This controller deletes a recipe.
     */

    /**
     * @Route("/recette/suppression/{id}", name="recipe.delete", methods={"GET"})
     *  
     * 
     */
    public function delete(
        EntityManagerInterface $manager,
        Recipe $recipe
    ): Response {
        $manager->remove($recipe);
        $manager->flush();

        $this->addFlash(
            'success',
            'Votre recette a été supprimé avec succès !'
        );

        return $this->redirectToRoute('recipe.index');
    }

    /**
     * allows to like or unlike a recipe
     *
     * @Route("/recette/{id}/like", name="recipe_like")
     * 
     * @param Recipe $recipe
     * @param ObjectManager $manager
     * @param PostLikeRepository $likeRepo
     * @return Response
     */
    public function like(Recipe $recipe, EntityManagerInterface $manager, PostLikeRepository $likeRepo) : Response 
    {

        $user = $this->getUser();

        if(!$user) return $this->json([
            'code'=> 403,
            'message'=> "Unauthorized"
        ], 403);

        if($recipe->isLikedByUser($user)) {
            $like = $likeRepo->findOneBy([
                'recipe' => $recipe,
                'user' => $user
            ]);

            $manager->remove($like);
            $manager->flush();

            return $this->json([
                'code' => 200,
                'message' => 'Like bine supprimé' ,
                'likes' => $likeRepo->count(['recipe' => $recipe])

            ], 200);
        }

        $like = new PostLike();
        $like->setRecipe($recipe)
            ->setUser($user);

             $manager->persist($like);
            $manager->flush();

        return $this->json([
            'code' => 200, 
            'message' => 'Like bien ajouté',
            'likes' => $likeRepo->count(['recipe' => $recipe])], 200);
    }
}