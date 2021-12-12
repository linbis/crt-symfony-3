<?php

namespace App\Controller;

use App\Entity\Article;
use App\Entity\StaticPage;
use App\Repository\ArticleRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bridge\Doctrine\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use Twig\Environment;

class StaticController extends AbstractController
{
    /**
     * @var EntityManagerInterface
     */
    private EntityManagerInterface $entityManager;

    /**
     * @var Environment
     */
    private Environment $twig;

    public function __construct(Environment $twig, EntityManagerInterface $entityManager)
    {
        $this->entityManager = $entityManager;

        $this->twig = $twig;
    }

    #[Route('/about', name: 'about')]
    public function about(): Response
    {
        return new Response($this->twig->render('view/about/index.html.twig'));
    }

    #[Route('/static/{id}', name: 'static')]
    public function show(StaticPage $staticPage): Response
    {
        return new Response($this->twig->render('view/static/show.html.twig', [
            'page' => $staticPage
        ]));
    }

    #[Route('/statics', name: 'statics')]
    public function index(Request $request): Response
    {
        $pages = $this->entityManager->getRepository(StaticPage::class)
            ->findBy([], null, 5);

        return new Response($this->twig->render('/view/static/index.html.twig', [
            'title' => 'Все статьи',
            'articles' => $pages
        ]));
    }
}