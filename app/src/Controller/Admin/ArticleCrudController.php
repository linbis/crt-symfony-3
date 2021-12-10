<?php

namespace App\Controller\Admin;

use App\Entity\Article;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Config\{
    Crud, Filters
};
use EasyCorp\Bundle\EasyAdminBundle\Field\{
    DateTimeField, TextareaField, TextField
};
use EasyCorp\Bundle\EasyAdminBundle\Filter\EntityFilter;

class ArticleCrudController extends AbstractCrudController
{
    /**
     * @return string
     */
    public static function getEntityFqcn(): string
    {
        return Article::class;
    }

    /**
     * @param Crud $crud
     * @return Crud
     */
    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            ->setEntityLabelInSingular('Articles')
            ->setEntityLabelInPlural('Articles')
            ->setSearchFields(['author', 'title', 'content', 'publishTime'])
            ->setDefaultSort(['createdAt' => 'DESC']);
    }

    /**
     * @param Filters $filters
     * @return Filters
     */
    public function configureFilters(Filters $filters): Filters
    {
        return $filters->add(EntityFilter::new('article'));
    }

    /**
     * @param string $pageName
     * @return iterable
     */
    public function configureFields(string $pageName): iterable
    {
        yield TextField::new('author');
        yield TextField::new('title');
        yield TextareaField::new('content');

        $publishTime = DateTimeField::new('publishTime')->setFormTypeOptions([
            'html5' => true,
            'years' => range(date('Y'), date('Y') + 5),
            'widget' => 'single_text',
        ]);

        if (Crud::PAGE_EDIT === $pageName) {
            yield $publishTime->setFormTypeOption('disabled', true);
        } else {
            yield $publishTime;
        }
    }

}
