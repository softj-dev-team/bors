.class Lzendesk/support/request/DocumentRenderer;
.super Ljava/lang/Object;
.source "DocumentRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;,
        Lzendesk/support/request/DocumentRenderer$ZendeskUrlSpan;,
        Lzendesk/support/request/DocumentRenderer$HtmlParser;,
        Lzendesk/support/request/DocumentRenderer$Node;,
        Lzendesk/support/request/DocumentRenderer$Style;
    }
.end annotation


# instance fields
.field private final actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

.field private final configHelper:Lzendesk/configurations/ConfigurationHelper;

.field private final configuration:Lzendesk/configurations/Configuration;

.field private final styleFactory:Lzendesk/support/request/DocumentRenderer$Style$Factory;


# direct methods
.method constructor <init>(Landroid/content/Context;Lzendesk/core/ActionHandlerRegistry;Lzendesk/configurations/ConfigurationHelper;Lzendesk/configurations/Configuration;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lzendesk/support/request/DocumentRenderer$Style$Factory;

    invoke-direct {v0, p1}, Lzendesk/support/request/DocumentRenderer$Style$Factory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzendesk/support/request/DocumentRenderer;->styleFactory:Lzendesk/support/request/DocumentRenderer$Style$Factory;

    .line 71
    iput-object p2, p0, Lzendesk/support/request/DocumentRenderer;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    .line 72
    iput-object p3, p0, Lzendesk/support/request/DocumentRenderer;->configHelper:Lzendesk/configurations/ConfigurationHelper;

    .line 73
    iput-object p4, p0, Lzendesk/support/request/DocumentRenderer;->configuration:Lzendesk/configurations/Configuration;

    return-void
.end method

.method constructor <init>(Lzendesk/support/request/DocumentRenderer$Style$Factory;Lzendesk/core/ActionHandlerRegistry;Lzendesk/configurations/ConfigurationHelper;Lzendesk/configurations/Configuration;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lzendesk/support/request/DocumentRenderer;->styleFactory:Lzendesk/support/request/DocumentRenderer$Style$Factory;

    .line 80
    iput-object p2, p0, Lzendesk/support/request/DocumentRenderer;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    .line 81
    iput-object p3, p0, Lzendesk/support/request/DocumentRenderer;->configHelper:Lzendesk/configurations/ConfigurationHelper;

    .line 82
    iput-object p4, p0, Lzendesk/support/request/DocumentRenderer;->configuration:Lzendesk/configurations/Configuration;

    return-void
.end method

.method private installClickableLinks(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 0

    .line 99
    invoke-static {p1}, Lzendesk/support/request/DocumentRenderer;->linkifyAll(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object p1

    .line 100
    invoke-direct {p0, p1}, Lzendesk/support/request/DocumentRenderer;->replaceUrlSpans(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object p1

    return-object p1
.end method

.method private static linkifyAll(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 8

    .line 151
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0xf

    .line 152
    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 156
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 157
    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    const/16 v7, 0x21

    invoke-interface {p0, v4, v5, v6, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private render(Lzendesk/support/request/DocumentRenderer$Node;)Ljava/lang/CharSequence;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lzendesk/support/request/DocumentRenderer;->reduce(Lzendesk/support/request/DocumentRenderer$Node;)Landroid/text/Spannable;

    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Lzendesk/support/request/DocumentRenderer;->installClickableLinks(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object p1

    .line 95
    invoke-static {p1}, Lzendesk/support/request/DocumentRenderer$Style$SpannableHelper;->trimSpannable(Landroid/text/Spannable;)Landroid/text/SpannableString;

    move-result-object p1

    return-object p1
.end method

.method private replaceUrlSpans(Landroid/text/Spannable;)Landroid/text/Spannable;
    .locals 10

    .line 134
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    .line 137
    array-length v1, p1

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 138
    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-virtual {v0, v3}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 141
    invoke-virtual {v0, v3}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 142
    invoke-virtual {v0, v3}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 143
    new-instance v3, Lzendesk/support/request/DocumentRenderer$ZendeskUrlSpan;

    iget-object v7, p0, Lzendesk/support/request/DocumentRenderer;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    iget-object v8, p0, Lzendesk/support/request/DocumentRenderer;->configHelper:Lzendesk/configurations/ConfigurationHelper;

    iget-object v9, p0, Lzendesk/support/request/DocumentRenderer;->configuration:Lzendesk/configurations/Configuration;

    invoke-direct {v3, v4, v7, v8, v9}, Lzendesk/support/request/DocumentRenderer$ZendeskUrlSpan;-><init>(Ljava/lang/String;Lzendesk/core/ActionHandlerRegistry;Lzendesk/configurations/ConfigurationHelper;Lzendesk/configurations/Configuration;)V

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v5, v6, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method reduce(Lzendesk/support/request/DocumentRenderer$Node;)Landroid/text/Spannable;
    .locals 8

    .line 105
    invoke-virtual {p1}, Lzendesk/support/request/DocumentRenderer$Node;->getType()Lzendesk/support/request/DocumentRenderer$Node$Type;

    move-result-object v0

    .line 106
    invoke-virtual {p1}, Lzendesk/support/request/DocumentRenderer$Node;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 108
    sget-object v2, Lzendesk/support/request/DocumentRenderer$Node$Type;->Text:Lzendesk/support/request/DocumentRenderer$Node$Type;

    if-ne v0, v2, :cond_0

    .line 109
    iget-object v0, p0, Lzendesk/support/request/DocumentRenderer;->styleFactory:Lzendesk/support/request/DocumentRenderer$Style$Factory;

    invoke-virtual {p1}, Lzendesk/support/request/DocumentRenderer$Node;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lzendesk/support/request/DocumentRenderer$Style$Factory;->getStyledText(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    return-object p1

    .line 112
    :cond_0
    sget-object v2, Lzendesk/support/request/DocumentRenderer$Node$Type;->Ol:Lzendesk/support/request/DocumentRenderer$Node$Type;

    if-eq v0, v2, :cond_1

    sget-object v2, Lzendesk/support/request/DocumentRenderer$Node$Type;->Ul:Lzendesk/support/request/DocumentRenderer$Node$Type;

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    .line 116
    invoke-static {p1}, Lzendesk/support/request/DocumentRenderer$Node;->access$000(Lzendesk/support/request/DocumentRenderer$Node;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzendesk/support/request/DocumentRenderer$Node;

    .line 117
    invoke-static {v4}, Lzendesk/support/request/DocumentRenderer$Node;->access$100(Lzendesk/support/request/DocumentRenderer$Node;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0}, Lzendesk/support/request/DocumentRenderer$Node$Type;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_parent"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    .line 120
    invoke-static {v4}, Lzendesk/support/request/DocumentRenderer$Node;->access$100(Lzendesk/support/request/DocumentRenderer$Node;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_index"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzendesk/support/request/DocumentRenderer$Node;

    .line 127
    invoke-virtual {p0, v3}, Lzendesk/support/request/DocumentRenderer;->reduce(Lzendesk/support/request/DocumentRenderer$Node;)Landroid/text/Spannable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 130
    :cond_3
    iget-object v1, p0, Lzendesk/support/request/DocumentRenderer;->styleFactory:Lzendesk/support/request/DocumentRenderer$Style$Factory;

    invoke-virtual {v1, v0}, Lzendesk/support/request/DocumentRenderer$Style$Factory;->getStyleForType(Lzendesk/support/request/DocumentRenderer$Node$Type;)Lzendesk/support/request/DocumentRenderer$Style;

    move-result-object v0

    invoke-virtual {p1}, Lzendesk/support/request/DocumentRenderer$Node;->getAttributes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lzendesk/support/request/DocumentRenderer$Style;->applyStyle(Ljava/util/List;Ljava/util/Map;)Landroid/text/Spannable;

    move-result-object p1

    return-object p1
.end method

.method render(Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;)Ljava/lang/CharSequence;
    .locals 1

    .line 86
    invoke-virtual {p1}, Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p1}, Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;->getNodeTree()Lzendesk/support/request/DocumentRenderer$Node;

    move-result-object p1

    invoke-direct {p0, p1}, Lzendesk/support/request/DocumentRenderer;->render(Lzendesk/support/request/DocumentRenderer$Node;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p1}, Lzendesk/support/request/DocumentRenderer$RichRenderingDocument;->getFallbackText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lzendesk/support/request/DocumentRenderer;->installClickableLinks(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object p1

    :goto_0
    return-object p1
.end method
