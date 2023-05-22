.class public final Lzendesk/support/GuideModule_ProvidesArticleVoteStorageFactory;
.super Ljava/lang/Object;
.source "GuideModule_ProvidesArticleVoteStorageFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lzendesk/support/ArticleVoteStorage;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lzendesk/support/GuideModule;


# direct methods
.method public constructor <init>(Lzendesk/support/GuideModule;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lzendesk/support/GuideModule_ProvidesArticleVoteStorageFactory;->module:Lzendesk/support/GuideModule;

    return-void
.end method

.method public static create(Lzendesk/support/GuideModule;)Lzendesk/support/GuideModule_ProvidesArticleVoteStorageFactory;
    .locals 1

    .line 30
    new-instance v0, Lzendesk/support/GuideModule_ProvidesArticleVoteStorageFactory;

    invoke-direct {v0, p0}, Lzendesk/support/GuideModule_ProvidesArticleVoteStorageFactory;-><init>(Lzendesk/support/GuideModule;)V

    return-object v0
.end method

.method public static providesArticleVoteStorage(Lzendesk/support/GuideModule;)Lzendesk/support/ArticleVoteStorage;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lzendesk/support/GuideModule;->providesArticleVoteStorage()Lzendesk/support/ArticleVoteStorage;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzendesk/support/ArticleVoteStorage;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lzendesk/support/GuideModule_ProvidesArticleVoteStorageFactory;->get()Lzendesk/support/ArticleVoteStorage;

    move-result-object v0

    return-object v0
.end method

.method public get()Lzendesk/support/ArticleVoteStorage;
    .locals 1

    .line 26
    iget-object v0, p0, Lzendesk/support/GuideModule_ProvidesArticleVoteStorageFactory;->module:Lzendesk/support/GuideModule;

    invoke-static {v0}, Lzendesk/support/GuideModule_ProvidesArticleVoteStorageFactory;->providesArticleVoteStorage(Lzendesk/support/GuideModule;)Lzendesk/support/ArticleVoteStorage;

    move-result-object v0

    return-object v0
.end method
