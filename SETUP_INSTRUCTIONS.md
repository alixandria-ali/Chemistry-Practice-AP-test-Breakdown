# GitHub Pages Setup Instructions

Your content is ready, but GitHub Pages needs to be enabled in your repository settings.

## Steps to Enable GitHub Pages

1. **Go to your repository**:
   https://github.com/alixandria-ali/Chemistry-Practice-AP-test-Breakdown

2. **Click on "Settings"** tab (top right of the repository page)

3. **Scroll down to "Pages"** in the left sidebar (under "Code and automation")

4. **Configure the source**:
   - **Source**: Select "GitHub Actions" from the dropdown
   - (Alternative if that doesn't work: Select "Deploy from a branch")
   - **Branch**: Select "main" and "/ (root)"
   - Click **Save**

5. **Wait 2-3 minutes** for the site to build

6. **Your site will be live at**:
   https://alixandria-ali.github.io/Chemistry-Practice-AP-test-Breakdown/

## If Using "Deploy from a branch" Method

If you selected "Deploy from a branch" instead of "GitHub Actions":

The site will automatically deploy from the `main` branch. Jekyll will process the markdown files and create the site.

## Troubleshooting

### Site still shows 404?
- Make sure GitHub Pages is enabled (see step 3-4 above)
- Check that the Actions workflow completed successfully (Actions tab)
- Wait a few more minutes - first deployment can take up to 10 minutes
- Try accessing with and without trailing slash

### Actions tab shows errors?
- Make sure Pages is enabled in Settings → Pages
- Ensure "GitHub Actions" is selected as the source

### Still having issues?
- Try the "Deploy from a branch" method as an alternative
- Make sure the repository is public (or you have GitHub Pro for private repos)

## Alternative: View Files Directly on GitHub

While setting up GitHub Pages, you can view the markdown files directly on GitHub:

- https://github.com/alixandria-ali/Chemistry-Practice-AP-test-Breakdown/blob/main/index.md
- https://github.com/alixandria-ali/Chemistry-Practice-AP-test-Breakdown/blob/main/Q1.md
- https://github.com/alixandria-ali/Chemistry-Practice-AP-test-Breakdown/blob/main/Q2.md
- https://github.com/alixandria-ali/Chemistry-Practice-AP-test-Breakdown/blob/main/Q3.md
- https://github.com/alixandria-ali/Chemistry-Practice-AP-test-Breakdown/blob/main/Q4.md
- https://github.com/alixandria-ali/Chemistry-Practice-AP-test-Breakdown/blob/main/Q5.md
- https://github.com/alixandria-ali/Chemistry-Practice-AP-test-Breakdown/blob/main/Q6.md
- https://github.com/alixandria-ali/Chemistry-Practice-AP-test-Breakdown/blob/main/Q7.md
