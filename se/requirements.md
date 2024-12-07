# Website Archiver

A platform that archives static websites periodically and serves them as browsable pages.

## Roles

1. Guest (Non-authorized)
2. Viewer (Authorized)
3. Author (Authorized)

## Functional Requirements (20)

### Guest

1. View public archived websites
2. Browse archived versions of public websites
3. Use search function to find public archives by website or date
4. View archives in a calendar format

### Viewer (includes Guest capabilities)

1. Register to the platform
2. Log in to the platform
3. View private archived websites (if given access)
4. Compare archived versions of a website side-by-side
5. Generate and share public links for specific archives
6. Download archived websites as ZIP files

### Author (includes Viewer capabilities)

1. Add websites to be archived
2. Remove websites from archiving list
3. Update archiving schedules
4. Delete old archives which they owns
5. Set periodic intervals for archiving (daily, weekly, monthly, yearly)
6. Modify archive visibility (public/private)
7. Receive notifications When a website fails to be archived or When storage quota is near limit
8. View storage usage statistics
9. Export archive metadata in JSON format
10. Import archive metadata in JSON format

### System Functions

1. Archive static website content (HTML, CSS, JS, images, etc.)
2. Handle basic JavaScript rendering for dynamic content
3. Store archives in an organized structure
4. Compress archived files to save storage space
5. Support configurable storage backends (e.g., local disk, S3 compatible)
6. Log and handle errors during archiving
7. Retry failed archiving tasks
8. Track analytics: Number of archives created for each website, page views, storage consumption

<br>
<br>

## Non-Functional Requirements

### 1. Performance

- Ensure archiving tasks run asynchronously to avoid blocking user operations.
- Optimize website browsing performance for archived versions.
- Scalability to handle archiving multiple websites concurrently.

### 2. Reliability

- Ensure archived websites are not corrupted during storage.
- Implement redundancy for critical storage systems.

### 3. Security

- Use HTTPS for all data transfer.
- Encrypt user credentials and sensitive data.
- Implement rate limiting to prevent abuse of the archiving feature.

### 4. Usability

- Simple, user-friendly UI for adding websites and browsing archives.
- Provide tooltips and help sections for new users.
- Responsive design for mobile and desktop devices.

### 5. Data Integrity

- Validate website URLs before adding them to the system.
- Ensure archived content is complete and not missing assets.

### 6. Maintainability

- Modular codebase for easy feature addition and bug fixing.
- Comprehensive documentation for developers and users.

### 7. Extensibility

- Ability to archive sites which aren't publicly accessible
- Ability to add support for additional content types (e.g., PDFs, videos).
- Plugin system for integrating third-party tools or services.

### 8. Compliance

- Adhere to data retention laws when storing archives.
- Provide users with the ability to delete their data upon request.
