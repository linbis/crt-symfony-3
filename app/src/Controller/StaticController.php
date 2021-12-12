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
        $page = $this->entityManager
            ->getRepository(StaticPage::class)->find(1);

        return new Response($this->twig->render('view/about/index.html.twig', [
            'page' => $page
        ]));
    }

    #[Route('/robots.txt')]
    public function robots(): Response
    {
        $page = $this->entityManager
            ->getRepository(StaticPage::class)->find(2);

        return new Response($this->twig->render('view/static/empty.html.twig', [
            'page' => $page
        ]), Response::HTTP_OK, [
            'Content-Type' => 'text/plain'
        ]);
    }
}