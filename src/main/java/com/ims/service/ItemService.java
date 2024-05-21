package com.ims.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ims.entity.Item;
import com.ims.repository.ItemRepository;


@Service
public class ItemService {
	@Autowired
    private ItemRepository itemRepository;
	
	public void saveitem(Item item) {
		itemRepository.save(item);
	}

	public List<Item> getAllitems() {
		List<Item> regs = itemRepository.findAll();
		return regs;
	}

	public void deleteRegById(long id) {
		 itemRepository.deleteById(id);
		
	}

	public Item getAllitemById(long id, long quantity) {
	Item item = itemRepository.findById(id).get();
	

	item.setQuantity(quantity);
	item.setId(id);
	 itemRepository.save(item);
	 
		return item;
	}


		
	}

		
	
