$wishlist_name = "Boardrxtrem_Wishlist"
$relative_wishlist_manager_output = ".\\littlelight\\dim\\$wishlist_name.txt"
$relative_additional = ".\\additionals\\$wishlist_name.txt"
$output = ".\$wishlist_name.txt"

Copy-Item -Path $relative_wishlist_manager_output -Destination $output

$additional_content = Get-Content -Path $relative_additional
Add-Content $output -value $additional_content