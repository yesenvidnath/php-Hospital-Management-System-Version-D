    <!-- External Js -->
    <script src="./Js/script.js"></script>
    <!-- jquery CDN -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
    <!-- Bootstrap Js CDN -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
    <!-- Bootstrap Js CDN for Calander -->
    <script src="/path/to/cdn/bootstrap.bundle.min.js"></script>

    <script>
        async function logout() {
          console.log('Logout button clicked');
        
          try {
            const response = await fetch('logout.php', {
              method: 'POST',
              headers: {
                'Content-Type': 'application/x-www-form-urlencoded',
              },
              body: 'logout=1',
            });
        
            if (response.ok) {
              console.log('Logout successful, redirecting...'); 
              window.location.href = 'index.php';
              
            } else {
              console.error('Logout failed:', response.statusText);
            }
          } catch (error) {
            console.error('Error occurred during logout:', error); 
          }
        }
</script>

</body>

</html>