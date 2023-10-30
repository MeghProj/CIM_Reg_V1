import random


def rawCount(filename):
    with open(filename, 'rb') as f:
        lines = 1
        buf_size = 1024 * 1024
        read_f = f.raw.read

        buf = read_f(buf_size)
        while buf:
            lines += buf.count(b'\n')
            buf = read_f(buf_size)
        return lines


def randomLine(filename):
    num = int(random.uniform(0, rawCount(filename)))
    with open(filename, 'r', encoding="UTF-8") as f:
        for i, line in enumerate(f, 1):
            if i == num:
                break
    return line.strip('\n')


def First(FirstNames):
    return randomLine(FirstNames)


def Last(LastNames):
    name = randomLine(LastNames) + "_sogsun"
    return name


# if __name__ == '__main__':
#     print(Last())
