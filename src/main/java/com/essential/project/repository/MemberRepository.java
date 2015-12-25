package com.essential.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.essential.project.dto.Member;
@Repository
public interface MemberRepository extends JpaRepository<Member, Integer> {

}
