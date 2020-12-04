#VERSION=0.4.19
VERSION=0.5.8

overflow: overflow.sol
	sudo docker run --rm -it -v $(PWD):/data:Z ethereum/solc:$(VERSION) --optimize --bin-runtime --hashes --overwrite -o /data/ /data/$<


clean:
	-$(RM) *.bin-runtime *.bin *.evm
