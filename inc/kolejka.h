#pragma once
#include <vector>
#include <algorithm>
#include <iostream>
#include <random>
#include <cstdlib>
#include <ctime>
#include <iostream>

template<typename T>
class kolejka_prior{
	struct Node{
		unsigned int indeks;
		T wartosc;
		Node *nastepne;
		Node *poprzednie;

		Node(unsigned int priorytet, T dana, Node *Nastepne, Node *poprzedni){
			indeks=priorytet;
			wartosc=dana;
			nastepne=Nastepne;
			poprzednie=poprzedni;
		}
		
		~Node(){
			if(nastepne!=nullptr)
				delete nastepne;
		}
	};
	unsigned int rozmiar;
	Node *head;	void push_front(unsigned int, T);
	Node *tail;

	public:
	unsigned int get_rozmiar(){
		return rozmiar;
	}

	bool is_empty(){
		return head==nullptr;
	}

	kolejka_prior(){
		head=nullptr;
		tail=nullptr;
		rozmiar=0;
	}

	void push_sort(unsigned int, T);
	kolejka_prior<T> random_pop();
	void wyswietl();
};

template<typename T>
void kolejka_prior<T>::push_sort(unsigned int priorytet, T dana){
	Node *nowy_node = new Node(priorytet, dana, nullptr, nullptr);
	
	if (is_empty()){
		head = nowy_node;
		tail = nowy_node;
	}
	else if (priorytet < head->indeks){
		nowy_node->nastepne = head;
		head->poprzednie = nowy_node;
		head = nowy_node;
	}
	else{
		Node *current = head;
		while (current->nastepne != nullptr && current->nastepne->indeks <= priorytet){
			current = current->nastepne;
		}
		nowy_node->nastepne = current->nastepne;
		nowy_node->poprzednie = current;
		if (current->nastepne != nullptr){
			current->nastepne->poprzednie = nowy_node;
		}
		else{
			tail = nowy_node;
		}
		current->nastepne = nowy_node;
	}
	
	rozmiar++;
}

template<typename T>
kolejka_prior<T> kolejka_prior<T>::random_pop(){
	kolejka_prior<T> nowa;
	Node *tmp=nullptr;

	if(is_empty()){
		throw std::runtime_error("Nie usunąć elementu - kolejka pusta!");
		//abort();
	}
	std::cout << "Wysyłane: ";
	while(rozmiar>1){
		tmp=head;
		srand(time(NULL));
		int min =0;
		int max = rozmiar-1;
		int losowe_miejsce = rand() % (max - min + 1) + min;

		for(int i=0;i<losowe_miejsce;i++)
			tmp=tmp->nastepne;
			
		std::cout << tmp->wartosc << " ";
		nowa.push_sort(tmp->indeks,tmp->wartosc);

		if(tmp==head){
			head=tmp->nastepne;
			head->poprzednie=nullptr;
		}
		else if(tmp==tail){
			tail=tmp->poprzednie;
			tail->nastepne=nullptr;
		}
		else{
			tmp->poprzednie->nastepne=tmp->nastepne;
			tmp->nastepne->poprzednie=tmp->poprzednie;
		}

		tmp->nastepne=nullptr;
		tmp->poprzednie=nullptr;
		delete tmp;
		rozmiar--;

		if(rozmiar==1){
			std::cout << head->wartosc << " ";
			nowa.push_sort(head->indeks, head->wartosc);
			head=nullptr;
			tail=nullptr;
			rozmiar--;
		}
	}
	std::cout<<std::endl;
	return nowa;
}

template<typename T>
void kolejka_prior<T>::wyswietl(){
	Node *tmp=head;

	while(tmp!=nullptr){
		std::cout<<tmp->wartosc<<" ";
		tmp=tmp->nastepne;
	}
	std::cout<<std::endl;
}