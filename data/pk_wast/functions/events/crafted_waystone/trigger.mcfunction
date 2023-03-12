# Remove advancement and recipe
advancement revoke @s only pk_wast:crafted_waystone
recipe take @s pk_wast:waystone

# Replace the knowledge book with a waystone
execute if score @s PKWASTCraftedKnowledgeBook matches 1.. store result score %pk_wast_crafted_knowledge_book_amount PKWASTValue run clear @s knowledge_book
execute if score @s PKWASTCraftedKnowledgeBook matches 1.. if score %pk_wast_crafted_knowledge_book_amount PKWASTValue matches 1.. run function pk_wast:events/crafted_waystone/recursive_give