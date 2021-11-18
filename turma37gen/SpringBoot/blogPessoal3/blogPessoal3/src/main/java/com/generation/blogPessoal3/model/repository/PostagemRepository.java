package com.generation.blogPessoal3.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.generation.blogPessoal3.model.Postagem;

@Repository
public interface PostagemRepository extends JpaRepository<Postagem, Long> {

	public List<Postagem> findAllByTituloContainingIgnoreCase(String titulo);

	public Postagem getByTituloContainingIgnoreCase(String titulo);

}
