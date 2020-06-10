-- Query Tables

SELECT * FROM card_holder; 
SELECT * FROM credit_card; 
SELECT * FROM merchant;
SELECT * FROM merchant_category;
SELECT * FROM transactions;

---join table

Select holder.id,card.card,trn.id as transaction_id,trn.date,trn.amount,trn.id_merchant 
from card_holder holder join credit_card card on holder.id=card.id_card_holder join transactions trn on trn.card=card.card where holder.id in ('2') order by holder.id asc;

Select holder.id,card.card,trn.id as transaction_id,trn.date,trn.amount,trn.id_merchant 
from card_holder holder join credit_card card on holder.id=card.id_card_holder join transactions trn on trn.card=card.card where holder.id in ('18') order by holder.id asc;
