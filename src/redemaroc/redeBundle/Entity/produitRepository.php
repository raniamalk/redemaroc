<?php

namespace redemaroc\redeBundle\Entity;

use Doctrine\ORM\EntityRepository;

/**
 * produitRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class produitRepository extends EntityRepository
{

    public function coupefeu($porte){
        $qb= $this -> createQueryBuilder('p')
                ->where('p.type = :type')
                ->setParameter('type', $porte);
            return $qb->getQuery()->getResult();
    }

    public function Portemetalliques(){
        $qb= $this -> createQueryBuilder('p')
            ->where('p.type = Portes et portails et grilles métalliques');
        return $qb->getQuery()->getResult();
    }

    public function Menuiseriemetallique(){
        $qb= $this -> createQueryBuilder('p')
            ->where('p.type = Menuiserie métallique');
        return $qb->getQuery()->getResult();
    }

    public function Porteacoustiques(){
        $qb= $this -> createQueryBuilder('p')
            ->where('p.type = Portes et parois acoustiques');
        return $qb->getQuery()->getResult();
    }

    public function Porteblindees(){
        $qb= $this -> createQueryBuilder('p')
            ->where('p.type = Portes blindées');
        return $qb->getQuery()->getResult();
    }

    public function Controlesdacces(){
        $qb= $this -> createQueryBuilder('p')
            ->where('p.type = Contrôles d’accès');
        return $qb->getQuery()->getResult();
    }

    public function Signaletique(){
        $qb= $this -> createQueryBuilder('p')
            ->where('p.type = Signalétique');
        return $qb->getQuery()->getResult();
    }


    public function findArray($array)
    {
        $qb = $this->createQueryBuilder('u')
            ->Select('u')
            ->Where('u.id IN (:array)')
            ->setParameter('array', $array);
        return $qb->getQuery()->getResult();
    }






}
