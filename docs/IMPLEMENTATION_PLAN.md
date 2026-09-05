# Implementation Plan — EventFlow

## Prinsip Eksekusi

Eksekusi dibagi menjadi fase kecil. Setiap fase berhenti pada gerbang persetujuan pengguna sebelum fase berikutnya dimulai. Fase 0 ini hanya menyelesaikan SOT.

| Fase | Hasil | Gerbang persetujuan |
| --- | --- | --- |
| 0 — SOT | PRD, UI Guideline, Implementation Plan | **Persetujuan SOT** |
| 1 — Fondasi UI | Struktur HTML, token CSS, layout aplikasi responsif | Persetujuan visual fondasi |
| 2 — Modul Event & Pendaftaran | Data mock, form event, form pendaftaran, validasi | Persetujuan alur pendaftaran |
| 3 — Pendaftar & Presensi | Tabel pendaftar, filter, check-in simulasi, status | Persetujuan operasional |
| 4 — Penyelesaian | Responsivitas, aksesibilitas, QA dan dokumentasi | Persetujuan rilis awal |

## Fase 1 — Fondasi UI

**Tujuan:** membangun shell dashboard sebagai single-page front-end statis.

**Output:** `index.html`, `styles.css`, `app.js`; sidebar responsif, top bar, dashboard, kartu metrik, dan token desain orange–kuning–coklat.

**Batasan:** HTML, CSS, dan JavaScript vanilla; tanpa framework, backend, atau API eksternal.

**Validasi:** desktop ≥1024 px dan mobile 360 px; keyboard navigation; tidak ada error JavaScript.

## Fase 2 — Event dan Pendaftaran

**Tujuan:** menghubungkan data mock pada daftar event dengan alur pendaftaran.

**Output:** CRUD event sisi-klien, modal/form event, halaman/form pendaftaran, kode registrasi deterministik, validasi input.

**Validasi:** event draft/published, kapasitas, dan pendaftaran sukses tercermin pada UI.

## Fase 3 — Pendaftar dan Presensi

**Tujuan:** menyelesaikan alur panitia pada hari-H.

**Output:** tabel pendaftar dengan search/filter; panel detail; input kode registrasi; status check-in dan perlindungan presensi ganda.

**Validasi:** skenario sukses, kode tidak ditemukan, event salah, dan check-in ulang.

## Fase 4 — Penyelesaian

**Tujuan:** memoles kualitas penggunaan sebelum diserahkan.

**Output:** responsive pass, empty/loading/error states, audit aksesibilitas dasar, README singkat, dan ZIP proyek.

**Validasi akhir:** seluruh kriteria penerimaan PRD terpenuhi dengan data mock yang konsisten.

## Aturan Perubahan

- Dokumen SOT adalah source of truth selama proyek berjalan.
- Perubahan lingkup, prioritas, atau desain dicatat dan harus disetujui sebelum implementasi terkait.
- Tidak ada fase berikutnya yang dieksekusi tanpa instruksi persetujuan eksplisit dari pengguna.

## Prasyarat Fase 1

Persetujuan terhadap ketiga dokumen SOT ini. Setelah itu, dibuat pula kontrak awal `AGENTS.md` dan prompt execution sebagai bagian awal dari eksekusi proyek.
