.class public interface abstract Lzendesk/messaging/components/IdProvider;
.super Ljava/lang/Object;
.source "IdProvider.java"


# static fields
.field public static final UUID_PROVIDER:Lzendesk/messaging/components/IdProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lzendesk/messaging/components/IdProvider$1;

    invoke-direct {v0}, Lzendesk/messaging/components/IdProvider$1;-><init>()V

    sput-object v0, Lzendesk/messaging/components/IdProvider;->UUID_PROVIDER:Lzendesk/messaging/components/IdProvider;

    return-void
.end method


# virtual methods
.method public abstract getNewId()Ljava/lang/String;
.end method
