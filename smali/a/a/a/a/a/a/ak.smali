.class public abstract La/a/a/a/a/a/ak;
.super Ljava/lang/Object;


# static fields
.field private static a:La/a/a/a/a/a/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, La/a/a/a/a/a/ak;->a:La/a/a/a/a/a/ak;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Ljava/lang/String;
    .locals 1

    sget-object v0, La/a/a/a/a/a/ak;->a:La/a/a/a/a/a/ak;

    if-nez v0, :cond_0

    const-string v0, "java.util.ResourceBundle"

    invoke-static {v0}, La/a/a/a/a/a/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.ResourceBundleCatalog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/a/ak;

    sput-object v0, La/a/a/a/a/a/ak;->a:La/a/a/a/a/a/ak;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, La/a/a/a/a/a/ak;->a:La/a/a/a/a/a/ak;

    invoke-virtual {v0}, La/a/a/a/a/a/ak;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1

    :cond_1
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.MIDPCatalog"

    invoke-static {v0}, La/a/a/a/a/a/ah;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.MIDPCatalog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/a/a/ak;

    sput-object v0, La/a/a/a/a/a/ak;->a:La/a/a/a/a/a/ak;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method protected abstract b()Ljava/lang/String;
.end method
