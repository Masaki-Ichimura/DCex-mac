from subprocess import Popen, PIPE, call
import re

# read response.txt(format: "word\tresponse") into response
with open("./response.txt") as f:
    response = dict(s.strip().split("\t") for s in f.readlines())

p = Popen(["sh", "ex1.sh"], stdout=PIPE, stderr=PIPE)
while True:
    input = p.stdout.readline().decode()
    output = ""
    if re.match("sentence1:(.*)", input):
        input = input[input.index(":")+1:].strip()
        words = input.split()
        for a_word in words:
            if a_word in response:
                output = response[a_word]
        if output:
            print("speak: {}".format(output))
            call(["say", output])
        else:
            print("result: {}".format(input))
p.kill()
