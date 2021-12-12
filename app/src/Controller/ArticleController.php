<?php

namespace App\Controller;

use App\Entity\Article;
use App\Repository\ArticleRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use Twig\Environment;

class ArticleController extends AbstractController
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

    #[Route('/article/{slug}', name: 'article')]
    public function show(string $slug, ArticleRepository $articleRepository): Response
    {
        $article = $articleRepository->findOneBy([
            'slug' => $slug
        ]);

        if (null === $article) {
            throw new NotFoundHttpException('Page not found');
        }

        return new Response($this->twig->render('view/article/show.html.twig', [
            'article' => $article
        ]));
    }

    #[Route('/', name: 'articles')]
    #[Route('/article')]
    public function index(Request $request, ArticleRepository $articleRepository): Response
    {
        $offset = max(0, $request->query->getInt('offset', 0));
        $paginator = $articleRepository->getPaginator($offset);

        return new Response($this->twig->render('/view/article/index.html.twig', [
            'title' => 'Все статьи',
            'articles' => $paginator,
            'previous' => $offset - ArticleRepository::PAGINATOR_PER_PAGE,
            'next' => min(count($paginator), $offset + ArticleRepository::PAGINATOR_PER_PAGE),
        ]));
    }
}