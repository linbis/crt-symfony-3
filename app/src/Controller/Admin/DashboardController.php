<?php

namespace App\Controller\Admin;

use App\Entity\{
    Article, User, StaticPage
};
use EasyCorp\Bundle\EasyAdminBundle\{
    Config\Dashboard, Config\MenuItem, Controller\AbstractDashboardController
};
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;

#[IsGranted('ROLE_EDITOR')]
class DashboardController extends AbstractDashboardController
{
    #[Route('/admin', name: 'admin')]
    public function index(): Response
    {
        return parent::index();
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('CRT Symfony #3');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::linktoDashboard('Dashboard', 'fa fa-home');
        yield MenuItem::linkToCrud('Articles', 'fas fa-list', Article::class);

        if ($this->isGranted('ROLE_ADMIN')) {
            yield MenuItem::linkToCrud('Pages', 'fas fa-list', StaticPage::class);
            yield MenuItem::linkToCrud('Users', 'fas fa-users', User::class);
        }
    }
}
