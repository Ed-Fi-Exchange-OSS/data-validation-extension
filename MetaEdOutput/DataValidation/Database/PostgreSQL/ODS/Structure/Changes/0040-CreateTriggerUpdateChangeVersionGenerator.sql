CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON datavalidation.ValidationResult
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON datavalidation.ValidationRule
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

CREATE TRIGGER UpdateChangeVersion BEFORE UPDATE ON datavalidation.ValidationRun
    FOR EACH ROW EXECUTE PROCEDURE changes.UpdateChangeVersion();

