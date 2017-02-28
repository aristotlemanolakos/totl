#!/bin/bash
# AUTOMATICALLY CREATE NEW BASIC WEBSITE TEMPLATE

# NEAT-O COLORS!!!!!
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # NO COLOR


echo -n -e "${GREEN}Enter project name:${NC} "
read text
echo -e "${GREEN}You entered:${NC} $text"

# MAKE PROJECT FOLDER
mkdir $text && cd $text

echo "New directory created..."

# NEW MAIN HTML FILE
touch index.html

echo "New HTML file created..."

# SEND TEMPLATE TO HTML FILE
cat > index.html <<- EOM
<!DOCTYPE html>
<html>
  <head>
    <title>$text</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style/style.css">
    <script src="js/app.js"></script>
  </head>
  <body>
  	<h1>Welcome to $text</h1>
    <p>This is your new project template</p>
  </body>
</html>
EOM

echo "HTML template populated..."

# NEW STYLESHEET FILE
mkdir style && cd style
touch style.css
echo "New stylesheet created..."
cat > style.css <<- EOM
*{
  margin: 0;
  padding: 0;
}
EOM
cd ..
echo "Stylesheet reset populated"

# NEW JAVASCRIPT FILE
mkdir js && cd js
touch app.js
cd ..
echo "New JavaScript app created..."

# echo "Project $text created, enjoy."
echo -e "${YELLOW}New project template $text created${NC}"

