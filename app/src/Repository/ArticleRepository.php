<?php

namespace App\Repository;

use App\Entity\Article;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\Tools\Pagination\Paginator;
use Doctrine\Persistence\ManagerRegistry;


/**
 * @method Article|null find($id, $lockMode = null, $lockVersion = null)
 * @method Article|null findOneBy(array $criteria, array $orderBy = null)
 * @method Article[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ArticleRepository extends ServiceEntityRepository
{
    /** @var int PAGINATOR_PER_PAGE - кол-во постов на страницу */
    public const PAGINATOR_PER_PAGE = 1;

    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Article::class);
    }

    public function findAll()
    {
        return $this->findBy([], [
            'created_at' => 'DESC', 'title' => 'ASC']);
    }

    public function getPaginator(int $offset): Paginator
    {
        return new Paginator($this->createQueryBuilder('a')
            ->orderBy('a.publishTime', 'DESC')
            ->setMaxResults(self::PAGINATOR_PER_PAGE)
            ->setFirstResult($offset)
            ->getQuery()
        );
    }
}
