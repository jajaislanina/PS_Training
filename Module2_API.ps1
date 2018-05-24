#MODULE 2
#REST API

function Get-Book
{
    param(
        $ISBN
    )
    $url = "https://www.googleapis.com/books/v1/volumes?q=isbn:$ISBN"
    $book = Invoke-RestMethod $url
    return $book.items
}

#. "$env:ProgramFiles\internet explorer\iexplore.exe" (Invoke-RestMethod https://random.dog/woof.json | select -ExpandProperty url)
