from flask import Flask, render_template_string
 
# Flask app instance
app = Flask(__name__)
 
# Define a class for demonstration (OOP)
class Greeting:
    def __init__(self, message):
        self.message = message
 
    def get_message(self):
        return self.message
 
# Function with logic
def generate_message():
    languages = ["Python", "Flask", "HTML"]
    if "Python" in languages:
        return "Welcome to the World of Python!"
    return "Welcome!"
 
# Main route
@app.route('/')
def home():
    # OOP and conditional usage
    greeting = Greeting(generate_message())
    # List comprehension to generate items dynamically
    items = [f"Learn {lang}" for lang in ["Variables", "Loops", "Functions", "OOP"]]
    # Rendered HTML content
    html = """
    <!DOCTYPE html>
    <html>
    <head>
        <title>Python Web App</title>
    </head>
    <body>
        <h1>{{ message }}</h1>
        <ul>
        {% for item in items %}
            <li>{{ item }}</li>
        {% endfor %}
        </ul>
    </body>
    </html>
    """
    # Render the web page
    return render_template_string(html, message=greeting.get_message(), items=items)
 
if __name__ == '__main__':
 {  # Run the app
app.run(debug=True)
 }