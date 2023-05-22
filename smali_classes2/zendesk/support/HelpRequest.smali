.class public Lzendesk/support/HelpRequest;
.super Ljava/lang/Object;
.source "HelpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/HelpRequest$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_ARTICLES_PER_SECTION:I = 0x5

.field private static final INCLUDE_ALL:Ljava/lang/String; = "categories,sections"

.field private static final INCLUDE_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final INCLUDE_SECTIONS:Ljava/lang/String; = "sections"

.field private static final LOG_TAG:Ljava/lang/String; = "HelpRequest"


# instance fields
.field private articlesPerPageLimit:I

.field private categoryIds:Ljava/lang/String;

.field private includes:Ljava/lang/String;

.field private labelNames:[Ljava/lang/String;

.field private sectionIds:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lzendesk/support/HelpRequest$Builder;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lzendesk/support/HelpRequest$Builder;->access$000(Lzendesk/support/HelpRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/HelpRequest;->categoryIds:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lzendesk/support/HelpRequest$Builder;->access$100(Lzendesk/support/HelpRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/HelpRequest;->sectionIds:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lzendesk/support/HelpRequest$Builder;->access$200(Lzendesk/support/HelpRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzendesk/support/HelpRequest;->includes:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lzendesk/support/HelpRequest$Builder;->access$300(Lzendesk/support/HelpRequest$Builder;)I

    move-result v0

    iput v0, p0, Lzendesk/support/HelpRequest;->articlesPerPageLimit:I

    .line 38
    invoke-static {p1}, Lzendesk/support/HelpRequest$Builder;->access$400(Lzendesk/support/HelpRequest$Builder;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/HelpRequest;->labelNames:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/support/HelpRequest$Builder;Lzendesk/support/HelpRequest$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lzendesk/support/HelpRequest;-><init>(Lzendesk/support/HelpRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getArticlesPerPageLimit()I
    .locals 1

    .line 74
    iget v0, p0, Lzendesk/support/HelpRequest;->articlesPerPageLimit:I

    return v0
.end method

.method public getCategoryIds()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lzendesk/support/HelpRequest;->categoryIds:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludes()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lzendesk/support/HelpRequest;->includes:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelNames()[Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lzendesk/support/HelpRequest;->labelNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getSectionIds()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lzendesk/support/HelpRequest;->sectionIds:Ljava/lang/String;

    return-object v0
.end method
