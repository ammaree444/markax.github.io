<!DOCTYPE html>
<html lang="ar">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>متجري الإلكتروني</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            direction: rtl;
        }

        header {
            background: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
        }

        header h1 {
            margin: 0;
        }

        nav ul {
            list-style: none;
            padding: 0;
        }

        nav ul li {
            display: inline;
            margin: 0 10px;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
        }

        main {
            padding: 20px;
        }

        .product-list {
            display: flex;
            flex-wrap: wrap;
        }

        .product-item {
            border: 1px solid #ddd;
            border-radius: 5px;
            margin: 10px;
            padding: 10px;
            width: 200px;
        }

        .product-item img {
            max-width: 100%;
            border-radius: 5px;
        }

        footer {
            background: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
            position: fixed;
            width: 100%;
            bottom: 0;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        form label, form input, form textarea, form button {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <header>
        <h1>متجري الإلكتروني</h1>
        <nav>
            <ul>
                <li><a href="#products">المنتجات</a></li>
                <li><a href="#about">من نحن</a></li>
                <li><a href="#contact">اتصل بنا</a></li>
            </ul>
        </nav>
    </header>
    
    <main>
        <section id="products">
            <h2>المنتجات</h2>
            <div class="product-list">
                <!-- Add product items here -->
                <div class="product-item">
                    <img src="product1.jpg" alt="منتج 1">
                    <h3>منتج 1</h3>
                    <p>وصف المنتج 1</p>
                    <p>السعر: 100 ريال</p>
                    <button>أضف إلى السلة</button>
                </div>
                <!-- Add more products as needed -->
            </div>
        </section>

        <section id="about">
            <h2>من نحن</h2>
            <p>نحن متجر إلكتروني متخصص في بيع المنتجات الرائعة.</p>
        </section>

        <section id="contact">
            <h2>اتصل بنا</h2>
            <form id="contactForm">
                <label for="name">الاسم:</label>
                <input type="text" id="name" name="name" required>
                
                <label for="email">البريد الإلكتروني:</label>
                <input type="email" id="email" name="email" required>
                
                <label for="message">الرسالة:</label>
                <textarea id="message" name="message" required></textarea>
                
                <button type="submit">أرسل</button>
            </form>
        </section>
    </main>

    <footer>
        <p>حقوق الطبع والنشر &copy; 2024 متجري الإلكتروني</p>
    </footer>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            console.log('الموقع جاهز!');

            // يمكنك إضافة تفاعلات JavaScript هنا
            const contactForm = document.getElementById('contactForm');
            contactForm.addEventListener('submit', function(event) {
                event.preventDefault();
                alert('تم إرسال الرسالة بنجاح!');
                contactForm.reset();
            });
        });
    </script>
</body>
</html>
