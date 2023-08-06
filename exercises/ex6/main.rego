package ex6

violated {
    count(failed) > 0
    print(failed)
}

failed[msg] {
    # 次の行を消して、ルールを記述してください
    msg := input.always_failed
}
