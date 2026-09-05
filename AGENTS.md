# Kontrak Agen — EventFlow

## Tujuan

Bangun EventFlow sesuai SOT yang disetujui: front-end website untuk pengelolaan event menggunakan HTML, CSS, dan JavaScript vanilla.

## Source of Truth

Selalu baca dan patuhi `../eventflow-sot/PRD.md`, `../eventflow-sot/UI-GUIDELINE.md`, dan `../eventflow-sot/IMPLEMENTATION_PLAN.md`. Bila ada konflik, Implementation Plan menentukan urutan kerja dan PRD menentukan ruang lingkup.

## Aturan Eksekusi

1. Kerjakan hanya fase yang telah disetujui pengguna.
2. Jangan menambah framework, backend, autentikasi, API, pembayaran, atau dependensi baru tanpa persetujuan eksplisit.
3. Gunakan data mock lokal sampai fase backend (jika pernah disetujui).
4. Pertahankan kombinasi warna orange, kuning, dan coklat serta aturan aksesibilitas di UI Guideline.
5. Jangan menghapus atau menimpa pekerjaan pengguna yang tidak terkait.
6. Sesudah tiap fase: cek responsivitas desktop/mobile, interaksi keyboard dasar, dan error JavaScript; lalu ringkas perubahan dan tunggu persetujuan sebelum fase lanjutan.

## Konvensi Kode

- HTML semantik dan elemen kontrol native.
- CSS memakai custom properties untuk token desain; tanpa inline style kecuali nilai dinamis yang benar-benar perlu.
- JavaScript modular, fungsi kecil, dan tanpa dependensi eksternal untuk logika aplikasi.
- Semua teks UI memakai Bahasa Indonesia kecuali istilah produk yang lazim.

## Definisi Selesai per Fase

Fitur sesuai acceptance criteria fase berjalan, visual konsisten, tidak ada error konsol, responsif pada 360 px dan desktop, serta pengguna telah menerima ringkasan untuk disetujui.
