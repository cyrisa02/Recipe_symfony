<?php

namespace App\Form;

use App\Entity\Ingredient;
use App\Entity\Recipe;
use App\Repository\IngredientRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\MoneyType;
use Symfony\Component\Form\Extension\Core\Type\RangeType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorageInterface;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\Validator\Constraints as Assert;

class RecipeType extends AbstractType
{
    // private $token;

    // public function __construc(TokenStorageInterface $token)
    // {
    //     $this->token = $token;
    // }

    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
        ->add('name', TextType::class, [
            'attr' => [
                'class' => 'form-control',
                'minlength' => '2',
                'maxlength' => '50',
            ],
            'label' => 'Nom',
            'label_attr' => [
                'class' => 'form-label mt-4',
            ],
            'constraints' => [
                new Assert\Length(['min' => 2, 'max' => 50]),
                new Assert\NotBlank(),
            ],
        ])
            ->add('time', IntegerType::class, [
                'attr' => [
                    'class' => 'form-control',
                    'min' => 1,
                    'max' => 1440,
                ],
                'required' => false,
                'label' => 'Temps (en minutes)',
                'label_attr' => [
                    'class' => 'form-label mt-4',
                ],
                'constraints' => [
                    new Assert\Positive(),
                    new Assert\LessThan(1441),
                ],
            ])
            ->add('nbPeople', IntegerType::class, [
            'attr' => [
                'class' => 'form-control',
                'min' => 1,
                'max' => 50,
            ],
            'required' => false,
            'label' => 'Nombre de personnes',
            'label_attr' => [
                'class' => 'form-label mt-4',
            ],
            'constraints' => [
                new Assert\Positive(),
                new Assert\LessThan(51),
            ],
            ])
            ->add('difficulty', RangeType::class, [
                'attr' => [
                    'class' => 'form-range',
                    'min' => 1,
                    'max' => 5,
                ],
                'required' => false,
                'label' => 'Difficulté',
                'label_attr' => [
                    'class' => 'form-label mt-4',
                ],
                'constraints' => [
                    new Assert\Positive(),
                    new Assert\LessThan(6),
                ],
            ])
            ->add('description', TextareaType::class, [
                'attr' => [
                    'class' => 'form-control',
                    'min' => 1,
                    'max' => 5,
                ],
                'label' => 'Description ',
                'label_attr' => [
                    'class' => 'form-label mt-4',
                ],
                'constraints' => [
                    new Assert\NotBlank(),
                    new Assert\LessThan(6),
                ],
            ])
            ->add('price', MoneyType::class, [
                'attr' => [
                    'class' => 'form-control',
                ],
                'required' => false,
                'label' => 'Prix en ',
                'label_attr' => [
                    'class' => 'form-label mt-4',
                ],
                'constraints' => [
                    new Assert\Positive(),
                    new Assert\LessThan(1001),
                ],
            ])

            ->add('isFavorite', CheckboxType::class, [
                'attr' => [
                    'class' => 'form-check-input',
                ],
                'required' => false,
                'label' => 'Favoris ?',
                'label_attr' => [
                    'class' => 'form-check-label ',
                ],
                'constraints' => [
                    new Assert\NotNull(),
                ],
            ])


            ->add('ingredients')
            //Aller voir dans Ingredient function __toString, RecipeType reconnaisse que ingredients est un string
            ->add('ingredients', EntityType::class, [
                'attr' => [
                    'class' => 'mt-4',
                ],
                'class' => Ingredient::class,
                 'query_builder' => function (IngredientRepository $r) {
                    return $r->createQueryBuilder('i')
                    // ->where('i.user = :user')
                    ->orderBy('i.name', 'ASC');
                    //->setParameter('user', $this->token->getToken()->getUser());
                },
                'label' => 'Les ingrédients',
                 'choice_label' => 'name',
                'multiple' => true,
                 'expanded' => true,
             ])
            ->add('submit', SubmitType::class, [
                'attr' => [
                    'class' => 'btn btn-primary mt-4',
                ],
                'label' => 'Créer une recette',
             ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Recipe::class,
        ]);
    }
}