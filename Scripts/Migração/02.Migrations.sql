--1. Crie a tabela de associa��o
CREATE TABLE DoctorSpecialty (
    DoctorSpecialtyId INT IDENTITY(1,1) PRIMARY KEY,
    DoctorId INT NOT NULL,
    SpecialtyId INT NOT NULL,
    FOREIGN KEY (DoctorId) REFERENCES Doctors(DoctorId),
    FOREIGN KEY (SpecialtyId) REFERENCES Specialties(SpecialtyId)
);

--2. Insira dados existentes na tabela de associa��o
INSERT INTO DoctorSpecialty (DoctorId, SpecialtyId)
SELECT DoctorId, SpecialtyId
FROM Doctors;


--3. Remover a Coluna SpecialtyId da tabela Doctor
--3.1. Remover a restri��o de chave estrangeira
ALTER TABLE Doctors
DROP CONSTRAINT FK_Doctors_Specialties; -- Substitua pelo nome real da restri��o, se necess�rio

--3.2. Remover a coluna SpecialtyId
ALTER TABLE Doctors
DROP COLUMN SpecialtyId;


