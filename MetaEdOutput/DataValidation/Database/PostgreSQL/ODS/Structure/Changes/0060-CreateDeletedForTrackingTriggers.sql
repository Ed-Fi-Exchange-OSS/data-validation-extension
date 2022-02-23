CREATE FUNCTION tracked_deletes_datavalidation.ErrorSeverityLevelDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_datavalidation.ErrorSeverityLevelDescriptor(ErrorSeverityLevelDescriptorId, Id, ChangeVersion)
    SELECT OLD.ErrorSeverityLevelDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ErrorSeverityLevelDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON datavalidation.ErrorSeverityLevelDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_datavalidation.ErrorSeverityLevelDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_datavalidation.RuleStatusDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_datavalidation.RuleStatusDescriptor(RuleStatusDescriptorId, Id, ChangeVersion)
    SELECT OLD.RuleStatusDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.RuleStatusDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON datavalidation.RuleStatusDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_datavalidation.RuleStatusDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_datavalidation.ValidationLogicTypeDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_datavalidation.ValidationLogicTypeDescriptor(ValidationLogicTypeDescriptorId, Id, ChangeVersion)
    SELECT OLD.ValidationLogicTypeDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ValidationLogicTypeDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON datavalidation.ValidationLogicTypeDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_datavalidation.ValidationLogicTypeDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_datavalidation.ValidationResult_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_datavalidation.ValidationResult(ValidationResultIdentifier, Id, ChangeVersion)
    VALUES (OLD.ValidationResultIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON datavalidation.ValidationResult 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_datavalidation.ValidationResult_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_datavalidation.ValidationRuleCollection_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_datavalidation.ValidationRuleCollection(CollectionIdentifier, Id, ChangeVersion)
    VALUES (OLD.CollectionIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON datavalidation.ValidationRuleCollection 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_datavalidation.ValidationRuleCollection_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_datavalidation.ValidationRule_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_datavalidation.ValidationRule(CollectionIdentifier, RuleIdentifier, Id, ChangeVersion)
    VALUES (OLD.CollectionIdentifier, OLD.RuleIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON datavalidation.ValidationRule 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_datavalidation.ValidationRule_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_datavalidation.ValidationRunStatusDescriptor_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_datavalidation.ValidationRunStatusDescriptor(ValidationRunStatusDescriptorId, Id, ChangeVersion)
    SELECT OLD.ValidationRunStatusDescriptorId, Id, nextval('changes.ChangeVersionSequence')
    FROM edfi.Descriptor WHERE DescriptorId = OLD.ValidationRunStatusDescriptorId;
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON datavalidation.ValidationRunStatusDescriptor 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_datavalidation.ValidationRunStatusDescriptor_TR_DelTrkg();

CREATE FUNCTION tracked_deletes_datavalidation.ValidationRun_TR_DelTrkg()
    RETURNS trigger AS
$BODY$
BEGIN
    INSERT INTO tracked_deletes_datavalidation.ValidationRun(CollectionIdentifier, ExaminedOds, RuleEngine, RunIdentifier, Id, ChangeVersion)
    VALUES (OLD.CollectionIdentifier, OLD.ExaminedOds, OLD.RuleEngine, OLD.RunIdentifier, OLD.Id, nextval('changes.ChangeVersionSequence'));
    RETURN NULL;
END;
$BODY$ LANGUAGE plpgsql;

CREATE TRIGGER TrackDeletes AFTER DELETE ON datavalidation.ValidationRun 
    FOR EACH ROW EXECUTE PROCEDURE tracked_deletes_datavalidation.ValidationRun_TR_DelTrkg();

