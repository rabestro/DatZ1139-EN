create table COMPANY
(
    PVN     char(13)      not null
        constraint COMPANY_pk
            primary key nonclustered,
    NAME    nvarchar(100) not null,
    WEB     varchar(200)  not null,
    Address nvarchar(200) not null
)
go

exec sp_addextendedproperty 'MS_Description', 'four major delivery companies', 'SCHEMA', 'dbo', 'TABLE', 'COMPANY'
go

exec sp_addextendedproperty 'MS_Description', 'Pievienotas vertibas nodoklis', 'SCHEMA', 'dbo', 'TABLE', 'COMPANY',
     'COLUMN', 'PVN'
go

create unique index COMPANY_PVN_uindex
    on COMPANY (PVN)
go

create unique index COMPANY_NAME_uindex
    on COMPANY (NAME)
go

INSERT INTO master.dbo.COMPANY (PVN, NAME, WEB, Address) VALUES (N'LV40203027461', N'Wolt Latvija SIA', N'https://wolt.com/', N'Elizabete iela 45/47, Riga');
INSERT INTO master.dbo.COMPANY (PVN, NAME, WEB, Address) VALUES (N'EE102090374  ', N'Bolt Technology OÜ', N'https://bolt.eu/', N'Dēļu iela 4 (P ieeja), Rīga, LV-1004');
INSERT INTO master.dbo.COMPANY (PVN, NAME, WEB, Address) VALUES (N'LV40003393255', N'SIA DPD Latvija', N'https://www.dpd.com/', N'Uriekstes 8a,
LV – 1005, Rīga, Latvija');
INSERT INTO master.dbo.COMPANY (PVN, NAME, WEB, Address) VALUES (N'LV40103527192', N'OMNIVA SIA', N'https://www.omniva.lv/', N'Dzirnieku iela 24, Mārupe, Mārupes novads, LV-2167');