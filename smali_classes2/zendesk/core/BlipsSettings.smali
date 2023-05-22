.class Lzendesk/core/BlipsSettings;
.super Ljava/lang/Object;
.source "BlipsSettings.java"


# instance fields
.field private permissions:Lzendesk/core/BlipsPermissions;


# direct methods
.method constructor <init>(Lzendesk/core/BlipsPermissions;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lzendesk/core/BlipsSettings;->permissions:Lzendesk/core/BlipsPermissions;

    return-void
.end method


# virtual methods
.method getBlipsPermissions()Lzendesk/core/BlipsPermissions;
    .locals 1

    .line 27
    iget-object v0, p0, Lzendesk/core/BlipsSettings;->permissions:Lzendesk/core/BlipsPermissions;

    return-object v0
.end method
