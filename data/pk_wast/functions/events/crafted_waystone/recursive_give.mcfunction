function pk_wast:waystone/helpers/give
scoreboard players remove %pk_wast_crafted_knowledge_book_amount PKWASTValue 1
execute if score %pk_wast_crafted_knowledge_book_amount PKWASTValue matches 1.. run function pk_wast:events/crafted_waystone/recursive_give