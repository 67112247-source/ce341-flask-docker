from flask import Flask, render_template, url_for # type: ignore

app = Flask(__name__)

# หน้า "/"  (home)
@app.route("/")
def home():
    student_name = "นางสาววิรดา สุทธสิทธิ์"
    student_id = "67112247"  # 2 ตัวหน้า + 4 ตัวท้าย ตามโจทย์
    return render_template("home.html",
                           student_name=student_name,
                           student_id=student_id)

# หน้า "/git"
@app.route("/git")
def git_page():
    return render_template("git.html")

# หน้า "/docker"
@app.route("/docker")
def docker_page():
    return render_template("docker.html")


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
