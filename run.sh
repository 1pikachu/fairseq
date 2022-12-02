pip install -e .

cp -r /home2/pytorch-broad-models/Transformer-LT/data-bin .

python train.py data-bin/iwslt14.tokenized.de-en     --optimizer nag --lr 0.25 --clip-norm 0.1 --dropout 0.2 --batch-size 256     --arch fconv_iwslt_de_en --save-dir checkpoints/fconv --num_warmup 2 --num_iters 3
