CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON edfixvalidations.ValidationResult
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON edfixvalidations.ValidationRule
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON edfixvalidations.ValidationRun
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

