# Update navigation in index.html
(Get-Content "index.html") -replace '<a href="#services">Services</a>', '<a href="services.html">Services</a>' `
    -replace '<a href="#contact">Contact</a>', '<a href="contact.html">Contact</a>' `
    -replace '<nav>(\s*)<a href="https://solveforceapp.github.io/SOLVEFORCE.COM/">Documentation</a>',
             '<nav>$1<a href="index.html">Home</a>$1<a href="services.html">Services</a>$1<a href="industries.html">Industries</a>$1<a href="pillars.html">Five Pillars</a>$1<a href="about.html">About</a>$1<a href="contact.html">Contact</a>$1<a href="https://solveforceapp.github.io/SOLVEFORCE.COM/">Documentation</a>' |
    Set-Content "index.html"

Write-Host "✓ Updated index.html navigation"

# Update navigation in pillars.html
(Get-Content "pillars.html") -replace '<nav>[\s\S]*?</nav>',
    '<nav>
                <a href="index.html">Home</a>
                <a href="services.html">Services</a>
                <a href="industries.html">Industries</a>
                <a href="pillars.html">Five Pillars</a>
                <a href="about.html">About</a>
                <a href="contact.html">Contact</a>
            </nav>' |
    Set-Content "pillars.html"

Write-Host "✓ Updated pillars.html navigation"

# Update navigation in fiber-availability.html
(Get-Content "fiber-availability.html") -replace '<nav>[\s\S]*?</nav>',
    '<nav>
                <a href="index.html">Home</a>
                <a href="services.html">Services</a>
                <a href="industries.html">Industries</a>
                <a href="pillars.html">Five Pillars</a>
                <a href="about.html">About</a>
                <a href="contact.html">Contact</a>
            </nav>' |
    Set-Content "fiber-availability.html"

Write-Host "✓ Updated fiber-availability.html navigation"
