from tkinter import *


def click():
    login = user_entry.get()
    password = user_entry.get()



root = Tk()
root.title('Authorization')
root.geometry("400x230")
root.resizable(width=False, height=False)
root['bg'] = "grey"

main_label = Label(root, text='Authorization', font='Arial 16 bold', bg='grey')
main_label.place(x=125, y=15)

user_Label = Label(root, text='Login:', font='Arial 13 bold', bg='grey')
user_Label.place(x=80, y=70)

user_entry = Entry(root, bg='white', font='Arial 10')
user_entry.place(x=150, y=71.5)


user_Label = Label(root, text='Password:', font='Arial 13 bold', bg='grey')
user_Label.place(x=45, y=125)

user_entry = Entry(root, bg='white', font='Arial 10')
user_entry.place(x=150, y=127)


send_btn = Button(root, text='sign in', command=click)
send_btn.place(x=185, y=170)

root.mainloop()