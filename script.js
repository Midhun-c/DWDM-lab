// Initialize Firebase
const firebaseConfig = {
    apiKey: "AIzaSyClGCEvSiboQAXkk-ZGGQDXXuuR1NUxLOg",
    authDomain: "loginpage666.firebaseapp.com",
    projectId: "loginpage666",
    storageBucket: "loginpage666.appspot.com",
    messagingSenderId: "256687059039",
    appId: "1:256687059039:web:5ac7fdc28bff556e56ebea",
    measurementId: "G-4PZM4TC3H7"
  };
  


  <script type="module">
  // Import the functions you need from the SDKs you need
  import { initializeApp } from "https://www.gstatic.com/firebasejs/10.9.0/firebase-app.js";
  import { getAnalytics } from "https://www.gstatic.com/firebasejs/10.9.0/firebase-analytics.js";
  const app = initializeApp(firebaseConfig);
  const analytics = getAnalytics(app);
</script>
  firebase.initializeApp(firebaseConfig);
  
  // Reference to the Firebase Auth service
  const auth = firebase.auth();
  
  // Login function
  function login() {
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
  
    auth.signInWithEmailAndPassword(email, password)
      .then(() => {
        // Redirect or do something on successful login
        console.log('Login successful');
      })
      .catch(error => {
        const errorCode = error.code;
        const errorMessage = error.message;
        document.getElementById('login-error').innerText = errorMessage;
      });
  }
  