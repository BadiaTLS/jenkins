import fire

def hello(name="World"):
  return "Hello %s, perubahan dilakukan melalui local computer dan di publish ke github serta dilakukan building docker melalui jenkins!" % name

if __name__ == '__main__':
  fire.Fire(hello)
