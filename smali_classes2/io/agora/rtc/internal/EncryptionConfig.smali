.class public Lio/agora/rtc/internal/EncryptionConfig;
.super Ljava/lang/Object;
.source "EncryptionConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;
    }
.end annotation


# instance fields
.field public encryptionKey:Ljava/lang/String;

.field public encryptionMode:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;->AES_128_XTS:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    iput-object v0, p0, Lio/agora/rtc/internal/EncryptionConfig;->encryptionMode:Lio/agora/rtc/internal/EncryptionConfig$EncryptionMode;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lio/agora/rtc/internal/EncryptionConfig;->encryptionKey:Ljava/lang/String;

    return-void
.end method
