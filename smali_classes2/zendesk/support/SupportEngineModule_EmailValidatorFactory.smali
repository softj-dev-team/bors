.class public final Lzendesk/support/SupportEngineModule_EmailValidatorFactory;
.super Ljava/lang/Object;
.source "SupportEngineModule_EmailValidatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/EmailValidator;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/SupportEngineModule;


# direct methods
.method public constructor <init>(Lzendesk/support/SupportEngineModule;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lzendesk/support/SupportEngineModule_EmailValidatorFactory;->module:Lzendesk/support/SupportEngineModule;

    return-void
.end method

.method public static create(Lzendesk/support/SupportEngineModule;)Lzendesk/support/SupportEngineModule_EmailValidatorFactory;
    .locals 1

    .line 30
    new-instance v0, Lzendesk/support/SupportEngineModule_EmailValidatorFactory;

    invoke-direct {v0, p0}, Lzendesk/support/SupportEngineModule_EmailValidatorFactory;-><init>(Lzendesk/support/SupportEngineModule;)V

    return-object v0
.end method

.method public static emailValidator(Lzendesk/support/SupportEngineModule;)Lzendesk/support/EmailValidator;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lzendesk/support/SupportEngineModule;->emailValidator()Lzendesk/support/EmailValidator;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/EmailValidator;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/support/SupportEngineModule_EmailValidatorFactory;->get()Lzendesk/support/EmailValidator;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/EmailValidator;
    .locals 1

    .line 26
    iget-object v0, p0, Lzendesk/support/SupportEngineModule_EmailValidatorFactory;->module:Lzendesk/support/SupportEngineModule;

    invoke-static {v0}, Lzendesk/support/SupportEngineModule_EmailValidatorFactory;->emailValidator(Lzendesk/support/SupportEngineModule;)Lzendesk/support/EmailValidator;

    move-result-object v0

    return-object v0
.end method
