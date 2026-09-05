# PRD — EventFlow

## 1. Ringkasan Produk

EventFlow adalah aplikasi web untuk mengelola siklus event dari pembuatan event, pendaftaran peserta, hingga presensi di lokasi. Produk ditujukan untuk panitia acara yang membutuhkan proses operasional ringkas, terukur, dan mudah dipantau.

## 2. Tujuan dan Ukuran Keberhasilan

- Memusatkan data event dan pendaftar dalam satu workspace.
- Mempercepat check-in peserta melalui kode registrasi / QR (simulasi pada versi awal).
- Memberi panitia visibilitas jumlah pendaftar, kehadiran, dan kapasitas event.

Ukuran keberhasilan versi awal: pengguna dapat membuat event, menerima pendaftaran, melihat daftar pendaftar, dan mengubah status kehadiran tanpa keluar dari aplikasi.

## 3. Pengguna dan Peran

| Peran | Kebutuhan utama |
| --- | --- |
| Admin / Panitia | Mengelola event, pendaftar, dan presensi |
| Peserta | Mengisi formulir pendaftaran dan menerima kode registrasi |

## 4. Ruang Lingkup MVP

### A. Dashboard

Menampilkan ringkasan total event aktif, total pendaftar, peserta hadir, dan rasio kapasitas; daftar event terdekat; serta aktivitas presensi terbaru.

### B. Data Event

Daftar dan detail event: judul, kategori, tanggal, lokasi, kapasitas, jumlah pendaftar, status (Draft / Published / Selesai). Admin dapat membuat, mengedit, dan menerbitkan event.

### C. Pendaftaran

Halaman publik sederhana untuk pendaftaran. Data wajib: nama, email, nomor WhatsApp, dan event. Setelah sukses, sistem menampilkan kode registrasi.

### D. Data Pendaftar

Daftar peserta per event dengan pencarian, filter status, detail pendaftar, dan status pembayaran opsional (Belum dibayar / Terverifikasi) untuk perluasan berikutnya.

### E. Presensi

Layar check-in untuk memasukkan / memindai kode registrasi, menampilkan identitas peserta, lalu mengonfirmasi kehadiran. Sistem menolak presensi ganda dan mencatat waktu check-in.

## 5. Ketentuan Fungsional

1. Event dapat disimpan sebagai Draft atau diterbitkan.
2. Pendaftaran hanya terbuka untuk event Published dengan kapasitas tersedia.
3. Setiap pendaftar menerima satu kode registrasi unik.
4. Presensi hanya dapat dilakukan satu kali untuk setiap kode registrasi.
5. Perubahan data harus langsung memperbarui angka ringkasan pada tampilan (data mock pada fase front-end).

## 6. Di Luar Ruang Lingkup MVP

- Integrasi pembayaran nyata, email / WhatsApp, autentikasi produksi, QR scanner perangkat, multi-tenant, dan backend/database nyata.
- Pelaporan ekspor dan analitik lanjutan.

## 7. Kriteria Penerimaan

- Navigasi Dashboard, Event, Pendaftar, dan Presensi dapat digunakan.
- Form pembuatan event dan pendaftaran memiliki validasi dasar.
- Data contoh konsisten di semua layar.
- Presensi memperlihatkan status berhasil dan mencegah check-in ulang.
- Tampilan responsif dan tetap terbaca pada desktop serta mobile.

## 8. Gerbang Persetujuan

Fase desain/implementasi tidak dimulai hingga PRD, UI Guideline, dan Implementation Plan ini disetujui pengguna.
