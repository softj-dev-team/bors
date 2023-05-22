.class Lzendesk/support/request/ActionFactory;
.super Ljava/lang/Object;
.source "ActionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/ActionFactory$ErrorAction;
    }
.end annotation


# static fields
.field static final ANDROID_ON_PAUSE:Ljava/lang/String; = "ANDROID_ON_PAUSE"

.field static final ANDROID_ON_RESUME:Ljava/lang/String; = "ANDROID_ON_RESUME"

.field static final ATTACHMENTS_DESELECTED:Ljava/lang/String; = "ATTACHMENTS_DESELECTED"

.field static final ATTACHMENTS_SELECTED:Ljava/lang/String; = "ATTACHMENTS_SELECTED"

.field static final ATTACHMENT_DOWNLOADED:Ljava/lang/String; = "ATTACHMENT_DOWNLOADED"

.field static final CLEAR_ATTACHMENTS:Ljava/lang/String; = "CLEAR_ATTACHMENTS"

.field static final CLEAR_MESSAGES:Ljava/lang/String; = "CLEAR_MESSAGES"

.field static final CREATE_COMMENT:Ljava/lang/String; = "CREATE_COMMENT"

.field static final CREATE_COMMENT_ERROR:Ljava/lang/String; = "CREATE_COMMENT_ERROR"

.field static final CREATE_COMMENT_SUCCESS:Ljava/lang/String; = "CREATE_COMMENT_SUCCESS"

.field static final CREATE_REQUEST:Ljava/lang/String; = "CREATE_REQUEST"

.field static final CREATE_REQUEST_ERROR:Ljava/lang/String; = "CREATE_REQUEST_ERROR"

.field static final CREATE_REQUEST_SUCCESS:Ljava/lang/String; = "CREATE_REQUEST_SUCCESS"

.field static final DELETE_MESSAGE:Ljava/lang/String; = "DELETE_MESSAGE"

.field static final DIALOG_DISMISSED:Ljava/lang/String; = "DIALOG_DISMISSED"

.field static final LOAD_COMMENTS_FROM_CACHE:Ljava/lang/String; = "LOAD_COMMENTS_FROM_CACHE"

.field static final LOAD_COMMENTS_FROM_CACHE_ERROR:Ljava/lang/String; = "LOAD_COMMENTS_FROM_CACHE_ERROR"

.field static final LOAD_COMMENTS_FROM_CACHE_SUCCESS:Ljava/lang/String; = "LOAD_COMMENTS_FROM_CACHE_SUCCESS"

.field static final LOAD_COMMENTS_INITIAL:Ljava/lang/String; = "LOAD_COMMENT_INITIAL"

.field static final LOAD_COMMENTS_INITIAL_ERROR:Ljava/lang/String; = "LOAD_COMMENTS_INITIAL_ERROR"

.field static final LOAD_COMMENTS_INITIAL_SUCCESS:Ljava/lang/String; = "LOAD_COMMENTS_INITIAL_SUCCESS"

.field static final LOAD_COMMENTS_UPDATE:Ljava/lang/String; = "LOAD_COMMENTS_UPDATE"

.field static final LOAD_COMMENTS_UPDATE_ERROR:Ljava/lang/String; = "LOAD_COMMENTS_UPDATE_ERROR"

.field static final LOAD_COMMENTS_UPDATE_SUCCESS:Ljava/lang/String; = "LOAD_COMMENTS_UPDATE_SUCCESS"

.field static final LOAD_REQUEST:Ljava/lang/String; = "LOAD_REQUEST"

.field static final LOAD_REQUEST_ERROR:Ljava/lang/String; = "LOAD_REQUEST_ERROR"

.field static final LOAD_REQUEST_SUCCESS:Ljava/lang/String; = "LOAD_REQUEST_SUCCESS"

.field static final LOAD_SETTINGS:Ljava/lang/String; = "LOAD_SETTINGS"

.field static final LOAD_SETTINGS_ERROR:Ljava/lang/String; = "LOAD_SETTINGS_ERROR"

.field static final LOAD_SETTINGS_SUCCESS:Ljava/lang/String; = "LOAD_SETTINGS_SUCCESS"

.field static final REQUEST_CLOSED:Ljava/lang/String; = "REQUEST_CLOSED"

.field static final SHOW_RETRY_DIALOG:Ljava/lang/String; = "SHOW_RETRY_DIALOG"

.field static final SKIP_ACTION:Ljava/lang/String; = "SKIP_ACTION"

.field static final START_CONFIG:Ljava/lang/String; = "START_CONFIG"


# instance fields
.field private final authProvider:Lzendesk/core/AuthenticationProvider;

.field private final belvedere:Lzendesk/belvedere/Belvedere;

.field private final executorService:Ljava/util/concurrent/Executor;

.field private final mainThreadExecutor:Ljava/util/concurrent/Executor;

.field private final requestProvider:Lzendesk/support/RequestProvider;

.field private final sdkVersion:Ljava/lang/String;

.field private final settingsProvider:Lzendesk/support/SupportSettingsProvider;

.field private final supportBlipsProvider:Lzendesk/support/SupportBlipsProvider;

.field private final supportUiStorage:Lzendesk/support/SupportUiStorage;

.field private final uploadProvider:Lzendesk/support/UploadProvider;

.field private final zendesk:Lzendesk/core/Zendesk;


# direct methods
.method constructor <init>(Lzendesk/support/RequestProvider;Lzendesk/support/UploadProvider;Lzendesk/support/SupportSettingsProvider;Lzendesk/belvedere/Belvedere;Lzendesk/support/SupportUiStorage;Ljava/util/concurrent/Executor;Ljava/lang/String;Lzendesk/core/AuthenticationProvider;Lzendesk/core/Zendesk;Lzendesk/support/SupportBlipsProvider;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lzendesk/support/request/ActionFactory;->requestProvider:Lzendesk/support/RequestProvider;

    .line 96
    iput-object p2, p0, Lzendesk/support/request/ActionFactory;->uploadProvider:Lzendesk/support/UploadProvider;

    .line 97
    iput-object p3, p0, Lzendesk/support/request/ActionFactory;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    .line 98
    iput-object p4, p0, Lzendesk/support/request/ActionFactory;->belvedere:Lzendesk/belvedere/Belvedere;

    .line 99
    iput-object p5, p0, Lzendesk/support/request/ActionFactory;->supportUiStorage:Lzendesk/support/SupportUiStorage;

    .line 100
    iput-object p6, p0, Lzendesk/support/request/ActionFactory;->executorService:Ljava/util/concurrent/Executor;

    .line 101
    iput-object p11, p0, Lzendesk/support/request/ActionFactory;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 102
    iput-object p7, p0, Lzendesk/support/request/ActionFactory;->sdkVersion:Ljava/lang/String;

    .line 103
    iput-object p8, p0, Lzendesk/support/request/ActionFactory;->authProvider:Lzendesk/core/AuthenticationProvider;

    .line 104
    iput-object p9, p0, Lzendesk/support/request/ActionFactory;->zendesk:Lzendesk/core/Zendesk;

    .line 105
    iput-object p10, p0, Lzendesk/support/request/ActionFactory;->supportBlipsProvider:Lzendesk/support/SupportBlipsProvider;

    return-void
.end method


# virtual methods
.method androidOnPause()Lzendesk/support/suas/Action;
    .locals 2

    .line 334
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "ANDROID_ON_PAUSE"

    invoke-direct {v0, v1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method androidOnResume()Lzendesk/support/suas/Action;
    .locals 2

    .line 330
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "ANDROID_ON_RESUME"

    invoke-direct {v0, v1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method attachmentDownloaded(Lzendesk/support/request/StateRequestAttachment;Lzendesk/belvedere/MediaResult;)Lzendesk/support/suas/Action;
    .locals 1

    .line 325
    new-instance v0, Lzendesk/support/suas/Action;

    invoke-static {p1, p2}, Landroidx/core/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;

    move-result-object p1

    const-string p2, "ATTACHMENT_DOWNLOADED"

    invoke-direct {v0, p2, p1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method clearAttachments()Lzendesk/support/suas/Action;
    .locals 2

    .line 318
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "CLEAR_ATTACHMENTS"

    invoke-direct {v0, v1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method clearMessages()Lzendesk/support/suas/Action;
    .locals 2

    .line 357
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "CLEAR_MESSAGES"

    invoke-direct {v0, v1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method createComment(Lzendesk/support/request/StateMessage;)Lzendesk/support/suas/Action;
    .locals 2

    .line 270
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "CREATE_COMMENT"

    invoke-direct {v0, v1, p1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method createCommentAsync(Ljava/lang/String;Ljava/util/List;)Lzendesk/support/suas/Action;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateRequestAttachment;",
            ">;)",
            "Lzendesk/support/suas/Action;"
        }
    .end annotation

    .line 242
    new-instance v0, Lzendesk/support/request/AttachmentUploadService;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->uploadProvider:Lzendesk/support/UploadProvider;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->belvedere:Lzendesk/belvedere/Belvedere;

    invoke-direct {v0, v1, v2, p2}, Lzendesk/support/request/AttachmentUploadService;-><init>(Lzendesk/support/UploadProvider;Lzendesk/belvedere/Belvedere;Ljava/util/List;)V

    .line 244
    new-instance v1, Lzendesk/support/request/ActionCreateComment;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->requestProvider:Lzendesk/support/RequestProvider;

    new-instance v3, Lzendesk/support/request/StateMessage;

    invoke-direct {v3, p1, p2}, Lzendesk/support/request/StateMessage;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v1, p0, v2, v0, v3}, Lzendesk/support/request/ActionCreateComment;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;Lzendesk/support/request/AttachmentUploadService;Lzendesk/support/request/StateMessage;)V

    .line 246
    invoke-static {v1}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lzendesk/support/suas/Action;

    move-result-object p1

    return-object p1
.end method

.method createCommentError(Lcom/zendesk/service/ErrorResponse;Lzendesk/support/request/StateMessage;)Lzendesk/support/suas/Action;
    .locals 2

    .line 278
    new-instance v0, Lzendesk/support/request/ActionFactory$ErrorAction;

    const-string v1, "CREATE_COMMENT_ERROR"

    invoke-direct {v0, v1, p1, p2}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/zendesk/service/ErrorResponse;Ljava/lang/Object;)V

    return-object v0
.end method

.method createCommentSuccess(Lzendesk/support/request/ActionCreateComment$CreateCommentResult;)Lzendesk/support/suas/Action;
    .locals 2

    .line 274
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "CREATE_COMMENT_SUCCESS"

    invoke-direct {v0, v1, p1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method createRequestError(Lcom/zendesk/service/ErrorResponse;Lzendesk/support/request/StateMessage;)Lzendesk/support/suas/Action;
    .locals 2

    .line 286
    new-instance v0, Lzendesk/support/request/ActionFactory$ErrorAction;

    const-string v1, "CREATE_REQUEST_ERROR"

    invoke-direct {v0, v1, p1, p2}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/zendesk/service/ErrorResponse;Ljava/lang/Object;)V

    return-object v0
.end method

.method createRequestSuccess(Lzendesk/support/request/ActionCreateComment$CreateCommentResult;)Lzendesk/support/suas/Action;
    .locals 2

    .line 282
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "CREATE_REQUEST_SUCCESS"

    invoke-direct {v0, v1, p1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method deleteMessage(Lzendesk/support/request/StateMessage;)Lzendesk/support/suas/Action;
    .locals 2

    .line 295
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "DELETE_MESSAGE"

    invoke-direct {v0, v1, p1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method deselectAttachment(Ljava/util/List;)Lzendesk/support/suas/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;)",
            "Lzendesk/support/suas/Action;"
        }
    .end annotation

    .line 311
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "ATTACHMENTS_DESELECTED"

    invoke-direct {v0, v1, p1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method initialLoadCommentsAsync()Lzendesk/support/suas/Action;
    .locals 4

    .line 155
    new-instance v0, Lzendesk/support/request/ActionLoadComments;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->requestProvider:Lzendesk/support/RequestProvider;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->belvedere:Lzendesk/belvedere/Belvedere;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lzendesk/support/request/ActionLoadComments;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;Lzendesk/belvedere/Belvedere;Z)V

    .line 156
    invoke-static {v0}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lzendesk/support/suas/Action;

    move-result-object v0

    return-object v0
.end method

.method installStartConfigAsync(Lzendesk/support/request/RequestConfiguration;)Lzendesk/support/suas/Action;
    .locals 8

    .line 123
    new-instance v7, Lzendesk/support/request/ActionInstallConfiguration;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->supportUiStorage:Lzendesk/support/SupportUiStorage;

    iget-object v3, p0, Lzendesk/support/request/ActionFactory;->executorService:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lzendesk/support/request/ActionFactory;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lzendesk/support/request/ActionFactory;->supportBlipsProvider:Lzendesk/support/SupportBlipsProvider;

    move-object v0, v7

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lzendesk/support/request/ActionInstallConfiguration;-><init>(Lzendesk/support/SupportUiStorage;Lzendesk/support/request/RequestConfiguration;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lzendesk/support/request/ActionFactory;Lzendesk/support/SupportBlipsProvider;)V

    .line 126
    invoke-static {v7}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lzendesk/support/suas/Action;

    move-result-object p1

    return-object p1
.end method

.method loadComments(Z)Lzendesk/support/suas/Action;
    .locals 1

    if-eqz p1, :cond_0

    .line 180
    new-instance p1, Lzendesk/support/suas/Action;

    const-string v0, "LOAD_COMMENT_INITIAL"

    invoke-direct {p1, v0}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 182
    :cond_0
    new-instance p1, Lzendesk/support/suas/Action;

    const-string v0, "LOAD_COMMENTS_UPDATE"

    invoke-direct {p1, v0}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method loadCommentsError(ZLcom/zendesk/service/ErrorResponse;)Lzendesk/support/suas/Action;
    .locals 1

    if-eqz p1, :cond_0

    .line 210
    new-instance p1, Lzendesk/support/request/ActionFactory$ErrorAction;

    const-string v0, "LOAD_COMMENTS_INITIAL_ERROR"

    invoke-direct {p1, v0, p2}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/zendesk/service/ErrorResponse;)V

    return-object p1

    .line 212
    :cond_0
    new-instance p1, Lzendesk/support/request/ActionFactory$ErrorAction;

    const-string v0, "LOAD_COMMENTS_UPDATE_ERROR"

    invoke-direct {p1, v0, p2}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/zendesk/service/ErrorResponse;)V

    return-object p1
.end method

.method loadCommentsFromCache()Lzendesk/support/suas/Action;
    .locals 2

    .line 197
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "LOAD_COMMENTS_FROM_CACHE"

    invoke-direct {v0, v1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method loadCommentsFromCacheAsync()Lzendesk/support/suas/Action;
    .locals 7

    .line 173
    new-instance v6, Lzendesk/support/request/ActionLoadCachedComments;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->supportUiStorage:Lzendesk/support/SupportUiStorage;

    iget-object v3, p0, Lzendesk/support/request/ActionFactory;->belvedere:Lzendesk/belvedere/Belvedere;

    iget-object v4, p0, Lzendesk/support/request/ActionFactory;->executorService:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lzendesk/support/request/ActionFactory;->sdkVersion:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lzendesk/support/request/ActionLoadCachedComments;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/SupportUiStorage;Lzendesk/belvedere/Belvedere;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 175
    invoke-static {v6}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lzendesk/support/suas/Action;

    move-result-object v0

    return-object v0
.end method

.method loadCommentsFromCacheError()Lzendesk/support/suas/Action;
    .locals 2

    .line 205
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "LOAD_COMMENTS_FROM_CACHE_ERROR"

    invoke-direct {v0, v1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method loadCommentsFromCacheSuccess(Lzendesk/support/request/StateConversation;)Lzendesk/support/suas/Action;
    .locals 2

    .line 201
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "LOAD_COMMENTS_FROM_CACHE_SUCCESS"

    invoke-direct {v0, v1, p1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method loadCommentsSuccess(ZLzendesk/support/CommentsResponse;Ljava/util/Map;)Lzendesk/support/suas/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lzendesk/support/CommentsResponse;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lzendesk/belvedere/MediaResult;",
            ">;)",
            "Lzendesk/support/suas/Action;"
        }
    .end annotation

    .line 188
    new-instance v0, Landroidx/core/util/Pair;

    invoke-direct {v0, p2, p3}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 190
    new-instance p1, Lzendesk/support/suas/Action;

    const-string p2, "LOAD_COMMENTS_INITIAL_SUCCESS"

    invoke-direct {p1, p2, v0}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    .line 192
    :cond_0
    new-instance p1, Lzendesk/support/suas/Action;

    const-string p2, "LOAD_COMMENTS_UPDATE_SUCCESS"

    invoke-direct {p1, p2, v0}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method loadRequest()Lzendesk/support/suas/Action;
    .locals 2

    .line 217
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "LOAD_REQUEST"

    invoke-direct {v0, v1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method loadRequestAsync()Lzendesk/support/suas/Action;
    .locals 2

    .line 232
    new-instance v0, Lzendesk/support/request/ActionLoadRequest;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->requestProvider:Lzendesk/support/RequestProvider;

    invoke-direct {v0, p0, v1}, Lzendesk/support/request/ActionLoadRequest;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;)V

    .line 233
    invoke-static {v0}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lzendesk/support/suas/Action;

    move-result-object v0

    return-object v0
.end method

.method loadRequestError(Lcom/zendesk/service/ErrorResponse;)Lzendesk/support/suas/Action;
    .locals 2

    .line 225
    new-instance v0, Lzendesk/support/request/ActionFactory$ErrorAction;

    const-string v1, "LOAD_REQUEST_ERROR"

    invoke-direct {v0, v1, p1}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/zendesk/service/ErrorResponse;)V

    return-object v0
.end method

.method loadRequestSuccess(Lzendesk/support/Request;)Lzendesk/support/suas/Action;
    .locals 2

    .line 221
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "LOAD_REQUEST_SUCCESS"

    invoke-direct {v0, v1, p1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method loadSettings()Lzendesk/support/suas/Action;
    .locals 2

    .line 138
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "LOAD_SETTINGS"

    invoke-direct {v0, v1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method loadSettingsAsync()Lzendesk/support/suas/Action;
    .locals 3

    .line 133
    new-instance v0, Lzendesk/support/request/ActionLoadSettings;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->settingsProvider:Lzendesk/support/SupportSettingsProvider;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->authProvider:Lzendesk/core/AuthenticationProvider;

    invoke-direct {v0, p0, v1, v2}, Lzendesk/support/request/ActionLoadSettings;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/SupportSettingsProvider;Lzendesk/core/AuthenticationProvider;)V

    .line 134
    invoke-static {v0}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lzendesk/support/suas/Action;

    move-result-object v0

    return-object v0
.end method

.method loadSettingsError(Lcom/zendesk/service/ErrorResponse;)Lzendesk/support/suas/Action;
    .locals 2

    .line 146
    new-instance v0, Lzendesk/support/request/ActionFactory$ErrorAction;

    const-string v1, "LOAD_SETTINGS_ERROR"

    invoke-direct {v0, v1, p1}, Lzendesk/support/request/ActionFactory$ErrorAction;-><init>(Ljava/lang/String;Lcom/zendesk/service/ErrorResponse;)V

    return-object v0
.end method

.method loadSettingsSuccess(Lzendesk/support/request/StateSettings;)Lzendesk/support/suas/Action;
    .locals 2

    .line 142
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "LOAD_SETTINGS_SUCCESS"

    invoke-direct {v0, v1, p1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method onDialogDismissed()Lzendesk/support/suas/Action;
    .locals 2

    .line 346
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "DIALOG_DISMISSED"

    invoke-direct {v0, v1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method requestClosed()Lzendesk/support/suas/Action;
    .locals 2

    .line 350
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "REQUEST_CLOSED"

    invoke-direct {v0, v1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method resendCommentAsync(Lzendesk/support/request/StateMessage;)Lzendesk/support/suas/Action;
    .locals 4

    .line 253
    new-instance v0, Lzendesk/support/request/AttachmentUploadService;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->uploadProvider:Lzendesk/support/UploadProvider;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->belvedere:Lzendesk/belvedere/Belvedere;

    .line 254
    invoke-virtual {p1}, Lzendesk/support/request/StateMessage;->getAttachments()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lzendesk/support/request/AttachmentUploadService;-><init>(Lzendesk/support/UploadProvider;Lzendesk/belvedere/Belvedere;Ljava/util/List;)V

    .line 255
    new-instance v1, Lzendesk/support/request/ActionCreateComment;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->requestProvider:Lzendesk/support/RequestProvider;

    invoke-direct {v1, p0, v2, v0, p1}, Lzendesk/support/request/ActionCreateComment;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;Lzendesk/support/request/AttachmentUploadService;Lzendesk/support/request/StateMessage;)V

    .line 257
    invoke-static {v1}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lzendesk/support/suas/Action;

    move-result-object p1

    return-object p1
.end method

.method selectAttachment(Ljava/util/List;)Lzendesk/support/suas/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/belvedere/MediaResult;",
            ">;)",
            "Lzendesk/support/suas/Action;"
        }
    .end annotation

    .line 304
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "ATTACHMENTS_SELECTED"

    invoke-direct {v0, v1, p1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method showRetryDialog(Ljava/util/List;)Lzendesk/support/suas/Action;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;)",
            "Lzendesk/support/suas/Action;"
        }
    .end annotation

    .line 342
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "SHOW_RETRY_DIALOG"

    invoke-direct {v0, v1, p1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method skipAction()Lzendesk/support/suas/Action;
    .locals 2

    .line 112
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "SKIP_ACTION"

    invoke-direct {v0, v1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method startConfig(Lzendesk/support/request/RequestConfiguration;)Lzendesk/support/suas/Action;
    .locals 2

    .line 116
    new-instance v0, Lzendesk/support/suas/Action;

    const-string v1, "START_CONFIG"

    invoke-direct {v0, v1, p1}, Lzendesk/support/suas/Action;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method updateCommentsAsync()Lzendesk/support/suas/Action;
    .locals 4

    .line 165
    new-instance v0, Lzendesk/support/request/ActionLoadComments;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->requestProvider:Lzendesk/support/RequestProvider;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->belvedere:Lzendesk/belvedere/Belvedere;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lzendesk/support/request/ActionLoadComments;-><init>(Lzendesk/support/request/ActionFactory;Lzendesk/support/RequestProvider;Lzendesk/belvedere/Belvedere;Z)V

    .line 166
    invoke-static {v0}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lzendesk/support/suas/Action;

    move-result-object v0

    return-object v0
.end method

.method updateNameEmailAsync(Ljava/lang/String;Ljava/lang/String;)Lzendesk/support/suas/Action;
    .locals 3

    .line 264
    new-instance v0, Lzendesk/support/request/ActionUpdateNameEmail;

    iget-object v1, p0, Lzendesk/support/request/ActionFactory;->authProvider:Lzendesk/core/AuthenticationProvider;

    iget-object v2, p0, Lzendesk/support/request/ActionFactory;->zendesk:Lzendesk/core/Zendesk;

    invoke-direct {v0, p1, p2, v1, v2}, Lzendesk/support/request/ActionUpdateNameEmail;-><init>(Ljava/lang/String;Ljava/lang/String;Lzendesk/core/AuthenticationProvider;Lzendesk/core/Zendesk;)V

    .line 266
    invoke-static {v0}, Lzendesk/support/request/AsyncMiddleware;->createAction(Lzendesk/support/request/AsyncMiddleware$AsyncAction;)Lzendesk/support/suas/Action;

    move-result-object p1

    return-object p1
.end method
