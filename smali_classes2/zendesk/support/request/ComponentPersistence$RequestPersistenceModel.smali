.class Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;
.super Ljava/lang/Object;
.source "ComponentPersistence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ComponentPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestPersistenceModel"
.end annotation


# instance fields
.field private final transient activityStopped:Z

.field private final conversation:Lzendesk/support/request/StateConversation;

.field private final date:Ljava/util/Date;

.field private final transient requestId:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Lzendesk/support/request/StateConversation;Z)V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->requestId:Ljava/lang/String;

    .line 254
    iput-object p2, p0, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->date:Ljava/util/Date;

    .line 255
    iput-object p3, p0, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->version:Ljava/lang/String;

    .line 256
    iput-object p4, p0, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->conversation:Lzendesk/support/request/StateConversation;

    .line 257
    iput-boolean p5, p0, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->activityStopped:Z

    return-void
.end method


# virtual methods
.method getConversation()Lzendesk/support/request/StateConversation;
    .locals 1

    .line 261
    iget-object v0, p0, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->conversation:Lzendesk/support/request/StateConversation;

    return-object v0
.end method

.method getDate()Ljava/util/Date;
    .locals 1

    .line 269
    iget-object v0, p0, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->date:Ljava/util/Date;

    return-object v0
.end method

.method getLocalRequestId()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method getVersion()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->version:Ljava/lang/String;

    return-object v0
.end method

.method isActivityStopped()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lzendesk/support/request/ComponentPersistence$RequestPersistenceModel;->activityStopped:Z

    return v0
.end method
