.class Lcom/sdkbox/plugin/PluginSocialShare$1;
.super Ljava/lang/Object;
.source "PluginSocialShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdkbox/plugin/PluginSocialShare;->showSharePanel([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdkbox/plugin/PluginSocialShare;


# direct methods
.method constructor <init>(Lcom/sdkbox/plugin/PluginSocialShare;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/sdkbox/plugin/PluginSocialShare$1;->this$0:Lcom/sdkbox/plugin/PluginSocialShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 40
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sdkbox/plugin/PluginSocialShare$1;->this$0:Lcom/sdkbox/plugin/PluginSocialShare;

    invoke-static {v1}, Lcom/sdkbox/plugin/PluginSocialShare;->access$300(Lcom/sdkbox/plugin/PluginSocialShare;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sdkbox/plugin/PluginSocialShare$1;->this$0:Lcom/sdkbox/plugin/PluginSocialShare;

    invoke-static {v1}, Lcom/sdkbox/plugin/PluginSocialShare;->access$200(Lcom/sdkbox/plugin/PluginSocialShare;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sdkbox/plugin/PluginSocialShare$1;->this$0:Lcom/sdkbox/plugin/PluginSocialShare;

    invoke-static {v1}, Lcom/sdkbox/plugin/PluginSocialShare;->access$100(Lcom/sdkbox/plugin/PluginSocialShare;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sdkbox/plugin/PluginSocialShare$1$2;

    invoke-direct {v2, p0}, Lcom/sdkbox/plugin/PluginSocialShare$1$2;-><init>(Lcom/sdkbox/plugin/PluginSocialShare$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sdkbox/plugin/PluginSocialShare$1;->this$0:Lcom/sdkbox/plugin/PluginSocialShare;

    .line 46
    invoke-static {v1}, Lcom/sdkbox/plugin/PluginSocialShare;->access$000(Lcom/sdkbox/plugin/PluginSocialShare;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sdkbox/plugin/PluginSocialShare$1$1;

    invoke-direct {v2, p0}, Lcom/sdkbox/plugin/PluginSocialShare$1$1;-><init>(Lcom/sdkbox/plugin/PluginSocialShare$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show social share panel fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PluginShare"

    invoke-static {v2, v0, v1}, Lcom/sdkbox/plugin/SdkboxLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
