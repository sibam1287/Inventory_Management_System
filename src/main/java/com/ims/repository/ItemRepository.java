package com.ims.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ims.controller.ItemController;
import com.ims.entity.Item;

public interface ItemRepository  extends JpaRepository<Item,Long>  {

	void save(ItemController item);

}
