-- ==========================================================
-- EventFlow - Skema Database & Data Dummy (MySQL / MariaDB / phpMyAdmin)
-- Sumber: Data Mock Front-End (Assets/app.js)
-- ==========================================================

-- 1. Tabel: events
-- Menyimpan informasi event / acara
CREATE TABLE IF NOT EXISTS `events` (
    `id` VARCHAR(50) NOT NULL,
    `title` VARCHAR(255) NOT NULL,
    `category` VARCHAR(100) NOT NULL,
    `date` DATE NOT NULL,
    `location` VARCHAR(255) NOT NULL,
    `capacity` INT NOT NULL,
    `registered` INT NOT NULL DEFAULT 0,
    `status` VARCHAR(50) NOT NULL DEFAULT 'Draft',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `idx_events_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2. Tabel: registrants
-- Menyimpan data pendaftar / peserta dan status presensi
CREATE TABLE IF NOT EXISTS `registrants` (
    `id` VARCHAR(50) NOT NULL,
    `event_id` VARCHAR(50) NOT NULL,
    `code` VARCHAR(50) NOT NULL,
    `name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `phone` VARCHAR(50) NOT NULL,
    `present` BOOLEAN NOT NULL DEFAULT FALSE,
    `checked_in_at` TIME NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `idx_registrants_code` (`code`),
    KEY `idx_registrants_event_id` (`event_id`),
    CONSTRAINT `fk_registrants_events` 
        FOREIGN KEY (`event_id`) 
        REFERENCES `events` (`id`) 
        ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ==========================================================
-- Data Dummy (Seed Data)
-- Gunakan INSERT IGNORE agar tidak error jika data/ID sudah ada
-- ==========================================================

-- Insert Data: events
INSERT IGNORE INTO `events` (`id`, `title`, `category`, `date`, `location`, `capacity`, `registered`, `status`)
VALUES
    ('evt-101', 'Tech Nexus Summit 2026', 'Konferensi', '2026-09-18', 'The Kasablanka', 500, 3, 'Published'),
    ('evt-102', 'Creative Leadership Forum', 'Seminar', '2026-09-24', 'South Quarter', 200, 2, 'Published'),
    ('evt-103', 'Product Design Meetup', 'Meetup', '2026-10-02', 'M Bloc Space', 150, 0, 'Draft');

-- Insert Data: registrants
INSERT IGNORE INTO `registrants` (`id`, `event_id`, `code`, `name`, `email`, `phone`, `present`, `checked_in_at`)
VALUES
    ('reg-001', 'evt-101', 'EF-101-0001', 'Aisha Ramadhani', 'aisha@contoh.id', '081234567801', TRUE, '09:42:00'),
    ('reg-002', 'evt-101', 'EF-101-0002', 'Bagas Pratama', 'bagas@contoh.id', '081234567802', TRUE, '09:38:00'),
    ('reg-003', 'evt-101', 'EF-101-0003', 'Citra Lestari', 'citra@contoh.id', '081234567803', FALSE, NULL),
    ('reg-004', 'evt-102', 'EF-102-0001', 'Dimas Ardiansyah', 'dimas@contoh.id', '081234567804', TRUE, '08:57:00'),
    ('reg-005', 'evt-102', 'EF-102-0002', 'Eka Permata', 'eka@contoh.id', '081234567805', FALSE, NULL);
