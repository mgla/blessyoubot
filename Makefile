build:
	go build
zip:
	zip blessyoubot.zip blessyoubot
clean:
	rm -f blessyoubot blessyoubot.zip
deploy: clean build zip updatelambda clean
updatelambda:
	aws lambda update-function-code --function-name blessyoubot --zip-file fileb://blessyoubot.zip
