.class final enum Lcom/nextpeer/android/dd$aa;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/dd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nextpeer/android/dd$aa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/nextpeer/android/dd$aa;

.field public static final enum b:Lcom/nextpeer/android/dd$aa;

.field public static final enum c:Lcom/nextpeer/android/dd$aa;

.field public static final enum d:Lcom/nextpeer/android/dd$aa;

.field public static final enum e:Lcom/nextpeer/android/dd$aa;

.field private static final synthetic g:[Lcom/nextpeer/android/dd$aa;


# instance fields
.field private final f:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/nextpeer/android/dd$aa;

    const-string v1, "Int32"

    invoke-direct {v0, v1, v3, v3}, Lcom/nextpeer/android/dd$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dd$aa;->a:Lcom/nextpeer/android/dd$aa;

    new-instance v0, Lcom/nextpeer/android/dd$aa;

    const-string v1, "String"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v4, v2}, Lcom/nextpeer/android/dd$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dd$aa;->b:Lcom/nextpeer/android/dd$aa;

    new-instance v0, Lcom/nextpeer/android/dd$aa;

    const-string v1, "Vector"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v5, v2}, Lcom/nextpeer/android/dd$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dd$aa;->c:Lcom/nextpeer/android/dd$aa;

    new-instance v0, Lcom/nextpeer/android/dd$aa;

    const-string v1, "Map"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v6, v2}, Lcom/nextpeer/android/dd$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dd$aa;->d:Lcom/nextpeer/android/dd$aa;

    new-instance v0, Lcom/nextpeer/android/dd$aa;

    const-string v1, "Buffer"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v7, v2}, Lcom/nextpeer/android/dd$aa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/nextpeer/android/dd$aa;->e:Lcom/nextpeer/android/dd$aa;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nextpeer/android/dd$aa;

    sget-object v1, Lcom/nextpeer/android/dd$aa;->a:Lcom/nextpeer/android/dd$aa;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nextpeer/android/dd$aa;->b:Lcom/nextpeer/android/dd$aa;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nextpeer/android/dd$aa;->c:Lcom/nextpeer/android/dd$aa;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nextpeer/android/dd$aa;->d:Lcom/nextpeer/android/dd$aa;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nextpeer/android/dd$aa;->e:Lcom/nextpeer/android/dd$aa;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nextpeer/android/dd$aa;->g:[Lcom/nextpeer/android/dd$aa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/nextpeer/android/dd$aa;->f:B

    return-void
.end method

.method public static a(B)Lcom/nextpeer/android/dd$aa;
    .locals 5

    invoke-static {}, Lcom/nextpeer/android/dd$aa;->values()[Lcom/nextpeer/android/dd$aa;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v2, v1

    iget-byte v4, v0, Lcom/nextpeer/android/dd$aa;->f:B

    if-eq v4, p0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nextpeer/android/dd$aa;
    .locals 1

    const-class v0, Lcom/nextpeer/android/dd$aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/dd$aa;

    return-object v0
.end method

.method public static values()[Lcom/nextpeer/android/dd$aa;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/nextpeer/android/dd$aa;->g:[Lcom/nextpeer/android/dd$aa;

    array-length v1, v0

    new-array v2, v1, [Lcom/nextpeer/android/dd$aa;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()B
    .locals 1

    iget-byte v0, p0, Lcom/nextpeer/android/dd$aa;->f:B

    return v0
.end method
