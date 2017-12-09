
/*
// List* List_create();
//     use malloc to allocate space for list

// List* List_destroy(List* list);
//     iterate through list, destroying each node's previous sibling
//     destroy the container list's memory

// void List_clear(List* list);
//     iterate through list, destroying each nodes previous sibling starting with 2nd node
//     reset pointers within first node to initial value
//     reset list's pointers to first and last node

// void List_clear_destroy(List* list);
//     iterate through list, destroying each nodes previous sibling starting with 2nd node
//     reset pointers within first node to initial value
//     reset list's pointers to first and last node


void List_push(List* list, void* value);
    allocate space for new node
    change n-1th nodes last pointer to new node
    set new nodes prev pointer to n-1th node
    change lists last pointer to new node

void List_pop(List* list);
    change list last to n-1th node
    save temp ref to popped node
    change n-1th nodes next to NULL
    change popped node's prev, next properties
    return popped node via its temp ref
    
void List_unshift(List* list, void* value);
    (insert new 1st item in list)
    allocate space for new node
    set new nodes next to previous first node
    set previous first nodes prev new node
    update lists first prop

void List_shift(List* list);

void List_remove(List* list, ListNode* node);
*/