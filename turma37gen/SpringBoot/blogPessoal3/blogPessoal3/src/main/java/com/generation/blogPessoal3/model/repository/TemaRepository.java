package com.generation.blogPessoal3.model.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.generation.blogPessoal3.model.Tema;

public interface TemaRepository extends JpaRepository<Tema, Long> {

	public List<Tema> findAllByDescricaoConteiningIgoreCase(String descricao);

}
