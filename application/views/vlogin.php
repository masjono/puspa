<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>E-Procurement - PT. Gapura Angkasa</title>
        <link rel="shortcut icon" href="<?= base_url() ?>assets/images/favicon.png"/>
        <meta name="description" content="E-Procurement PT. Gapura Angkasa" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!-- basic styles -->

        <link href="<?= base_url() ?>assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="<?= base_url() ?>assets/css/font-awesome.min.css" />
        <link rel="stylesheet" href="<?= base_url() ?>assets/css/bootstrap.animated-icons-demo.css" />

       	<link rel="stylesheet" href="<?= base_url() ?>assets/css/ace-fonts.css" />

        <!-- ace styles -->

        <link rel="stylesheet" href="<?= base_url() ?>assets/css/ace.min.css" />
        <link rel="stylesheet" href="<?= base_url() ?>assets/css/ace-rtl.min.css" />

        <!--[if lte IE 8]>
          <link rel="stylesheet" href="<?= base_url() ?>assets/css/ace-ie.min.css" />
        <![endif]-->

        <!-- inline styles related to this page -->

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

        <!--[if lt IE 9]>
        <script src="<?= base_url() ?>assets/js/html5shiv.js"></script>
        <script src="<?= base_url() ?>assets/js/respond.min.js"></script>
        <![endif]-->
    </head>

    <body class="login-layout">
        <div class="main-container">
            <div class="main-content">
                <div class="row">
                    <div class="col-sm-10 col-sm-offset-1">
                        <div class="login-container" style="margin-top: 12%;">
                            <div class="position-relative">
                                <div id="login-box" class="login-box visible widget-box no-border center">
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <img src="data:image/jpg;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAAyCAYAAADm1uYqAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBNYWNpbnRvc2giIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6RUU3QUVFNkE5MjAyMTFFMkI0MDE4NUE4REZBMkNCODMiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6RUU3QUVFNkI5MjAyMTFFMkI0MDE4NUE4REZBMkNCODMiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpFRTdBRUU2ODkyMDIxMUUyQjQwMTg1QThERkEyQ0I4MyIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDpFRTdBRUU2OTkyMDIxMUUyQjQwMTg1QThERkEyQ0I4MyIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PkFMH60AAGMISURBVHja7L0HnF1VtT++Tj/n9nunz2SSTHpII41ACAk9FFGKVBXsT1ERCzwLKooVBeWJzy5NQBFQmkgLNSSE9F4mk8n0mdvL6Xuf81v73DuTguW99///3uP9zOVzSXLLObus9V3f79pr78v5vg/HHscexx7HHv8bHtwxwDr2OPY49jgGWMcexx7HHscexwDr2OPY49jjGGD9Dz6eX73pP/V5jefhhWwe7uvqgxDHA4ev8RzHD47k7nE4v6tp/tR1fYIe03oN2cqZV9dT+0aP4zaMdRq/IPD4P96H3IEwJEpFWHRcI3z63FlgOPQf3j+RTMLHP/geWP/G63/1fXbtLy8+GeZt74XZegaulhLwPtoBmQUtsHz4VbjPbACpkoGnrEHYi58nk6fAmkf+DPWSDJ/71Efh5VXPQjSRhMsFDaZ4JkybOhX8wRw06FfCU+fthXyyEfhsFuimTdCMzQ3pE2F/Mge7zSw0to2HU3gRejM5mLB9PbzGx8GMLISTrXXwtFOBAbzfnyJh+PXkmRCxZCB8Diw1Dvq2Csh0B8yaMAH6C9Oh0DwEqWQUjGgzSPkhWLJ1N3zWzcO8k0+EVD+AqAOc8d2rgW+YCFu+9R3Y/+ab0BfXoMHX4BrqwJeKZdgOZjAel+GzEZ8uPtVQCGJzFoBjO5BqbYTX9/RAx0gX/LBcOWIMfZzj1x54FKzJU4Gz7bHXZRz71R+8Cg68sQb2Qws0jIvAeqcA3y4U4WnwYGf9FDindQmUcXo/uv1xmGHm4Vq4AO7hX4Br588HWY/hpwbAVQBu27IluOY117wffn33XTC4axcM9/TAwpUrYWhoGOKJFJh6CV7dsBHixy2AVx79Hfzwq1+G3z32HMw/fjZ87vOfgfqHnoT3PPonKIQlAOod4VusG29xOOyXUyrBlvt/A06FwOCevbA1lwHB8GHFwgVwy6qHxz5rOS489+JqEJUQaKoKHNqHTwn0dO4FSdOgubkVb3nEPUGMRGDnrd+H/s2vgyvLQRMW9/TCY+gn92fTY587S1HgYryGhd/vJwS6Uym4YuJcoNd/AhqnzwBSLP6HfPHMk+f/t2KF+L8RZdkgnxKPw/pmBzZJHIjEA0HgvbJlO/q+nq/mnlnHLAPKrguhiLafH5fs4zwfPARnxDXgCUBE5oG4PtAyj8B1LHIde7BAxh3xd7QpENhrhwV19jrPi2N/N4kNhUIexHgrEOoINaAK4RMRDAr4pEcAmKqAPVgB6jgstI1dV0Iw2rl/L7z55jpYvPiEsbuFIhE+lAjTgb5hMBB4Cq+/DF+7725oOm4O3Pvgo1AsFP7/GwBFhfJv74LoshUgnrkSfGyj5DpA30Yi7H+lq7LxU9GYzquLwuCcNui+9DTYf/EysK8+9dpxjYnv8ILoAIJa4/QJL9UtmHSSInHDkipASyoCYjQaRCrWcWaM3H9Tew8Pu8ce//fG9z/zEPgx8+cC6MB/i2IVjDKlkrSjs0c5OFwSBVmV2HuCKIGFbK9cyiJT1DgZ2eKAkYdf/fInwP4+Or2yLNhiSCshm/JHUQnBzeeQ8ajdB2Hrbd8H2zQCtjXWFkGAfLkEH/nIRyCXywWvqbIIJ82Y5HmPvg4//vDH4PHbvwkj2zcjgGDgRRYvCuLhfsyz14IWcP9FK5NEsHdugwM/+xEYV14E4zp3Q6ohCb739pnrtwXDwgn+xx+iVYZEvKp5EqbobBfqHnwR9LNKYCyaCZzr2Q1NqS8ZPD+B6NaVP116/LdKlKblVhfySHt3mBa8PJAHh0XM/wbkYLeQg0Hmxv5N+cCiAifz/64TesDkOo9PiWOfxz898e/cCcauWQ3lfmDFbMz8wzrL/c0oddiA+NzhtKPqEXgdB4OAx9c+yz6DfeEkIWCtPr5H/0PociRbYc5H/4tpCS/oWfU/0Wfj5QFh1+KFoHn+2Fhy4I55XbU/OgLGsmXL4Bu33AKWIPJbuzrpd977AZg9eQIcKJdhYl2Db4sSTbSM52ITZop+ccgdfPmFALB++rUvQF3lSz6HzErjVXj2mcfgwoeWQPN5FxKWZoBihuQefhSWXnAu9EyaoYwMD3OvP/BrAlke5j7/CIKbBqRtaTCGrI0uGwOUkxEtBC9u2QqTp0wGGSUga3rEMODd5WYwtBLwdfUgyEoAtOmhISiVivh3AWWhqwqSSont2LKqBWPM18CQTZ/kv9Xa2LsiY5HBlDBrQ5XCxhGloovOpe7aATOffwp2nHka7w9l8R3eOwZYtUd/b+4f27kiQSisQmtIAo9xVIwGeTRCDoEo9ex6aEUgUkbKOFE4ocDrvsDbcR/2j0M25SHVvXXLHlCiKrPl/77I73GwDw1sdiIm7fOG40KuEnuWi9uC4KZlCRzO+mtAVYUclaggJyNQ8mRut4VQIMqQr+vEOM371PN8rgZiHPNMzsN+c6BgxFWQBRC8RFhSIIcGnrBDkAXCkpUBoLBbVtCYA/kT5PH4wKoROgIdo+K/edELQCh4neVI8HpEErkldc0QLrvIBcCTo4K3//X1vBrv4y3XpqFknd+icOBZPo6/X+vHaN6GC5yBBHyjqpoYuyCUQmMogk+8c0U/Ej7xvrz3N3zE84KrhwSZi0uSuFhK+PspTxTB4zrCUeDNoq9i11SPBB8Po6/Nj9ezPGcwVqy3PDKpjZs2w7pNm2ByPM49/MM7BDI4Qjs9G17+zL/Cp40ivXV8i//LB5+Fut/83l3b+zo4Xd1wdWuHKg7l409949thMPRKKp7MzjF9Wtm6HU781xvhjgfug+Hrr4PjE/Xw7L4dEP7QtXa0tUkkmTTovRRMBEM+Ecf5qIK3jAY5XdNwqBOgk1IQawr5QjBeLDtbj+PDNYRggshBTFADcAmjLfQND8K9v/4ZXPuZL0DFtsxy51Z/4zf+DMrkGGS2vYnqgWjgixGXuNZ+WSmzAZNx7B1aDSs6XmcY/87+FZYkSKkRvs8xBLQN6vii78dTsGjVKn9SSoV8KCRYhuEdzgj/qQHrvZd+6x98Ah3u+IXQcsIiWHlaBIjoQ6quqfmJnfuHWLTxFRnEcgUZFgEBQYz3vSkGob4dUooy0urb122Hl3r74cLZU4OIhIbbhhfNo/0a/zf6g3gCMjrVNjTMfupPJn7pnIrjLOHSxTaEGksUuC0QVh49XW7cANkRdC7K9Cnj9IBaNrjGxcp4hI38kn7KzTs4mGHzRGKN27aMiy5bH29vszMjI6CjxDBFji/ZPadAkc6cIcuunCvyvbYleA4RTDVR5n1rpEEb3ktA625zdW8Q3eA+IR43RjJnmIrawMieX8z00ZTz8m8zoC8cGoYpKanNMfjT06at+gh3aOy7t7U0rZ+nCXLvUH6pS90pVOD9rqfzIjqV4LgWxchPYoaZoZJwYAunbpd4Vw97UsBn7GgTFBBIRcQqSfPr08PpsziBj5WKZU71oGQmml98oKl5UBWq0cRHR1ISCYg1NgcB6XCg4vA6XGsbcNEItEp+0iqXV0QFvn2nEkEBRkuNxaEXxK7NB6fjx8dj6xwco0jDbnkxH1paGBqaybPv+37OtvRnPdvK71m/Hjzbj6bXbT65Hrh2P6t7U4AfeS4Se2nm+s15a/pygPol0NOwWaJpcw7vOufYLpk3VKo0YUTKOZKyZkGy4VGqhbt8TfC37tgMUqUMVuv4yJt7us+M/eC2NlmWObOQP8CJ2qoK/pXyImR37TvFt8lc6thegqnNEOlrcP3nLkcsCSFrmya3QxmjmpHwF2a88olNosR7OZ3Leu7ms2N1a+61DPc3v/gJhJGtnbFkqb/pzttAz7pw4ODITMo77/Ac93hJlptd182kFWVzQlUeuXbO3L3/vnMHOI4Dr+HzdXy2I5O7un28LJjeis2de+d7hBAcH6u/qXndjoH6Dadd86Q35wener179bdFOuNtAVie5/xDwMJwDIW8Di92m+C0h6Hwwpqfe7otxKPat5BdrGHo3z9zEoTXbgXDcuKEeoplmKm+Es2tHclgFEGGYtmTspncx8rZ0oe1ptgy3fJ3siDO/RdY199bXU2lklB2XCgqzjIjb99AXOdMdPrQKC13KZxDPO/kcCT6pV/FYHWSToakJYEplGFhTw/UR8LgqelxRtH8NHWd89miJt7OQg7yfdI3tCnhOmAVdJASDUAsO54f6P6kqVcuYvzF9/yqiguSxQiPvGBKxFnfKanfWhyvX3U1ItnDPHQY2dyN+JklXDV/8kCdKr05z5P0YSJDfam40HSd7yCRbcNrWLIkf5uLRje5JrTgmH7Ata3zWPq4xqL8UU7ECJzoioPbRf7Xi1MtP52TPa5i+QT2FPtBBxfmptDgnOKKUqn0I0q8RpYckRTtgNLU8pFflvXBLbnhGjP1QEbA+lJ/LyyaMxdMo7rayIXCUF67Grh9eyCCjClvkPm2Yfyr5XvzAsXs0V6MBv1WPHVwL5KBpzUEK2QPcV5KFtPZD9mOcwWyK2bzA7F4/JqrgXu+48EH4UDHzJReqXzYMc3zcWJFjBx/1KKxdZOgLl8njMBv2o3IcFl8FxKZTxDXXYgtlMd6TY1zs1xocV8h/42XvviV7bvufxBjkQLjPW+qXizdUhgens2YVCgauyeejL+xq7nF9Gz3lHL64M8JcWcyWYi2ayQb4fMFsJ1H8ZpneBa8x9kHf05NjOQr7sct07i67DFlR0ELhX9V11C38+xsR6ZCeRh85BF45rknQaY8RyR6PvGtLxDLPQHtUyKmGUhjzqDvLjjuirAkXvcJgd+7GO9xOz7X49NBezFsv71SLn2O2O5pfrDgzjkqjXxbkdSN6575N19bTqBu6QlALecYYP3Hcv9cNckoCaDttSDb1ABSU+q5wpYDP7Ys5/yIS/8ih5Rf+Snnmcq4hkql15P5wQxvmM67QJF+gXg01zCs9z25fvdl1LCTypy23+65fN4+73v7QHNd4KT/Quzg//Z3Lm5pg1KhvMAoV75FHWc599Y8Ee8RdzkS+Y9t0lr3HNfNZ6Z87Gb4Vmsa1vX3wRnJBk70+MXINJZywYpToBQUxzDaNJS8Kz/+UUjv2AuPfvUWltOLEMcdj0YmBEsIh4NvkIWFkOu4yxHG6J5YoqsvrHSKJXuSIFrt6ODV/I8a1kOSR65KtcHacL1kVAamIL6kmITiBNETBKnouQSx045hxB6Pr4YhyO++ZQyQWNIYR7zrPMXYbmivP60jOreE0b+R6cZULeKUnZWIU43VHAtKSPx8oZSPteh50PTSWA6OVCpw8PvfhrmPPQNURQDnqsba97M7QNy7G7xoY5gAfyqygXn4DTVoDy/Ua+FwUzyZhBG9DC/2daPUUWFFQ3sK35uG/RFrbW41XPek40ORVYjA3tZcPk5saxyOociAXtbUisKJznO8C+mWlGRmt5xr58s3U9edMpaNPNR1Fb97Yd/WLdvSG9ftaR8ZcTeE4zCrZDZyvtcoIqNjwI5jN0QM2wVFmWWYhZspoTN5FilxCORw6OcN0fCDW/YfdJlEm42s8E0thCAvznYc/XT8kMSGy/dRHQhCu+sL8bkdsUwJ2efjAxW4xGsBhxtYVClZN1cB9dCKZ62ZPAbNlRjc3pdsnHHzj3u20H21gDsnHEOYpIs9Qk9iXa+Ojy/Ssl5XkHT+7mLe+8mn1oPWWMfi31tsPd8/8M8IWO4/yrijBZMWd7D/535d+KuJVT2b6czQnamOFuPAcO5HpWzpnHJeP4c/kO5VNbUEujGF4uh//uWNX3I9+slCyZjoITCxuUhOaPklndfx8dLNOcq/UNBIe+YeG9R7BIF76ojl57/zKNsW3HDpe6Cw4c0jEtMskq6NRIBmi03I2K93XWf5WxhZzdGDBLxDV2gJ57g29eVXChtsuGYDwLvxWquJF9cd6xQ0kKbDPcOjpD7c0iD14f2HzBJMv3Al7H9tQxPNpFPcUXmww82VNc+jdCGO4aJKzu62bRev60e5IPnvG9iQA76QNG6ye2FhiFPrJHk8Z1tq0GaOL0qqPCxJMiU+NKFES8A/SJJ7ntdaMcwFKzT52Y/ZaXorVWDAEYAKiRkVl5x8eCDCdom5QkE+i1pBvdYRVrFjKzj/+kkATQUfmVJk21ZYsmED3NXQBGk+PJErl5Zh+9XRfiIgSYIaakq1NECLqUC4vxtpF85XsYRA68RGAZb1S/C8hT2RZKo70ZgJue64im3Xe8hgsGcuAkmPrMjmkoYGyLh0lqsXPk5dMmUsx+gfmsdafyVSKJz5UrLht4rWeOAiBbiCZTYgKGnVMgjeUrRQGrVWo1MsXEtsZ8UoC5Y17Q9xNfL9y4b6C5vMKpPcimpithjhXErPxKA1gTss3mHAiNuep52t7IdVB/fAgCugxPPCtu9+0HXthaNj4flekbFJvH94lAa7trOcn9RU95P+1MjnSRFWcRRatXjcQGaJrDZ26LtsPcCLRgVFXuxpxHc8IH3Dx1YJx+jGuDl/pzYGKYLkNpoe/4SeKSw8oBtT65vrVnpprSe8pP434nD2izSketR249Sw2nXdrLIfjofhTD7FFBq7CB9R8rztJ8fXxR8rrhqm8PKQaGqV+/Vc4SIzL5xqzmy5NKxJL49W3Ziud7jsOwLECC9AOxr3RYydHbXOlpPDwg7Cn0+J+66xNSpeyGKTfi8KItqF/y5CnHG1xbhWlCGTPdd7JcMMJRaDGMoeRY1NM4zMMnxFHAMs/AMpjtCz8U3/1coIpCgHTcg8eEXpEAS+DiVw8BFJlrt4RR5CpwghI5iKnQgMEeVE2CiX2yKyrKET1HnUk7kg2Y6Cgbj9GadsT7dUSKquajh2g19Tlj6hWYrswJN4DllOK34n5QcrbpwrylKXIEl9PkX54TpTEHxaIChGZjf0Yh4xZby4udMbBw31TZxR6l9OqTvpyCVaXwwLvLaHl7gvU8f3Dy9dwf9d9vCLIAUpaB+G8E8PJkPBkZH0VZYQj86GIwklk2rxbEXkD1qa90d87aL6BmjyxQlOgaRGFwICACfkOIeS8Z7vZzBwsLrWRG2aTce2uwUQTYhKsl+yLkOwOmWMToXCB5VQ+E2cN8k2zaW+RxuqK5bcNN51Js1RQwf8ek3Sy/ZkHJNaGoCnKDEjjmVe4TjOZdgOIVh/EOXV0WTqe34lMihk9oGNNIqR/W5FhTlaeJxdKpzBSmjh8FVm1w1FURw/JCWhC/92HcrCijcww7Sc00ZHTlHV5zDA/BDnox1l8E0oPdvZ68Sx5Eo2E5nvPTLiwhehTdkMER/m5Fz7JDhqJRkkKd6gNaqnm7MMXpag7YwFIIW1v8qy/vkAq2N6dYn8qPoRNjSixIV8N/80KVQWsNdMw54xPJz9Y9hWzx1wpBFpcsPr6pQJ/653DX6abt1/JchiAFa14hacYQphURwKnz3ngsLu7BcxWOxLDOekSmvhgVLOvIgNATpvwzMv7n0aBGmpIAmbw7IA7z6hHUKKxECLOxpBJYyALzz4ENwnqCxXfqiMRZIBvXicb1QuZA4bxGCOL2uaepOmSr+EcFQzsoUR4pHPY+eieF+B5HMR9FfYiyZ8X6UE41ON3GzgTkapNP1II0LpxvPh7Zs3y0+8uTp4rU5U4LJUSwSjqVaL9mWBF38ejsSfpJIJRrn0YdtxP8PkIgMRzyMCJ0fjsiBOorousRFGzy/HY7H8tvwgSI3joa2+rml/957xAWyzZW9RzAEvImhR3rXMFLKJ4F4IDmVRlu8KxWLPeq7D6QX6DgSBG/A7EfwaU3D6sOv712Cj1hgVeJ+VaHZc5lQ1+cZWOb2AC8paKNzoROvl3/Tstw+v3GZi6lK+DFqQMqjCTUWowECovQ4MsgLnpu7wMWJ9NI2KmspW+JQLbAJAcangS8o4tK84BNeulpUQSttchxyvCbCjZOh1lFI12AEhSKYWCuUgpNEKgprrOBczUA3ao6j7GtrH/yTc0vJsurMz6lr2xyh4V+BbGgrmaLFY0Cq2ASYXlwkntGInhYCQeVTVS8WrUFZrCPb17P54nx2Ih193C+lNd+W2w58Q8n6PH9eFMDwYaeTK1D4FAWfeIU+olkAIPK/6ihx/59WX8nzmem/1T36I+qNrBrLvlmARFEFPjUSfDQnKMwS8eomSJALWCV511XGbZhrGDvVdIE1oh+X5Bs2wzTPQDsePZhBGAUkS5SZaH4lsm5TINcycCs03fhSZnPv/oert/yHAis1IAtF1Fs3hcEbBqtOdjEt4z9+IPHXB6DK8YzoL/FzPn2Bwyrni5868hhILaMHMhSJqjiiS75TNOghWA8GUo2q3YNkRVU5sE86Yeol69wuQ7S08kMmY7x7LQ6Glx6NK39KOuKGpMrIrwqQKTrDExOgRM8SJIji9PTDB0GHC1BljcpCVNe+2Xe5guTQfDXRB1cB8nHjlz1GBe3A4M0CXOKnKtnDiiZAohvFrLehwvOKS3euROZxZjMNlKIvuVWNNg7nc2Wg5oUP1U9V6I48XIqg2Qh1oN+0xGSaFk2DqZhNFtsS6IkqyKYa03VLR2qOhAxjgb8A2OPhdjecFV9EiBiFUdZFBVROHQQ5pEBlU3/n1ddA/YyrYI5lGXhBbCSHB3RHA08gqDInjNMtx21xKVL9apVhWVXV9RJQ2mdTGuEAm4+tOdZsUb4RDkcHXbcM5IArw4SYNRkiR5UkWVfvCH6oV43hJVLU2XorLFDj78LFuTyZh64zpYNZWCtlQlxz81khxLrKeExhHRfZq8YLgMebBmB/K3VidmJNPH+4i+9FWUA/J5VKxEYFWPjLn5ocCQIhEXpCoO841iFjL+GclURxhbXQIQWemU6tsmLMlVfkTHw49HPHcobLrKLoq/V4SQmVeFFJon3rFdHoPICFq4PgIMfT6Q3yFExzDmDYWoAVxJBSL3qlR7pW+4X5AbAVGTTvR5kSPYZzUaJrl05GOJ2slIARtSqxWuPJhIaQmcrt6xHDvdide7wklGp3GmXlGf4IiT8sw30EFt5cTuB1KSP1tJBK9OyQCIWLUNj3PXHP1u+Fsy4T+R/48Oa9nVlTNt7oLhNVjsXGmGHArel4N0yy0LT4XoGiCb5nHJGGQ+LtxEeQ3ISXOl8aqf5lTSDiApX2GEzrAf0wVITWSqVwMtcJLVyUnxSJdT7V+8/F3HPzACQWYkHpjijvp1eyStgODd656Hg002jq+6bvQEL1fTxffG16310kOb4fivtydfYPFK8fACqOupkkD5y2ZdOGExeP3/qUnA+aZp0Dz3oOQyhaBisIRchBZDmSpC1/av505+1gf0HHhnOaOqE/IIoxSjYFh8rweUpVnuo180RJDUK+EIJVM7HJN81bEYvQzzpAcy9iYH4LVGF0X1DWAXyzNcw19oV/9/kFR4Ncgrb8YGYmM4bU+IkjxT1tJmAlXwa6mnLJx6NUZnOuwuk5WTlFQNbXPD0lgE1cUS+5iziFqbeUtL4tCJ/4Zx4ibGuNtHKTLDsk+XinAyfabMOxyIcexI7U6LxeBoNuzKwUiqSFsUCvLizCgQUfOCrbVaeoV3paFZnSkE/HFGBsqBMeDkixu1cuNXvPCSTA1NSHc8/orCMJ+E2umIAp7EXCYQ9dDNSEdVT2DvzIoYDzk5lPjcWjo6ADHskZzVEDSlThkSmehrJ0U2Igs/QWlFeIluSRIvoAXtsuW3G46RkILg5xqTTjDvR1stf7ICnCOLVgch/JvIvG8Fq62Vkw9OuSa+qAkCTHqWEuwr4z7s3KYQXTo57hea2AkUfElHoxUKvECgssaxDYKCClainNJLA5y/1C96JJxyCjfsiwR1LXysD0ZDj2/KtNnbwAS7E1NLVsGtxw8CNMGbX48mHNKhJ4QALogDsmSvMoyjXfjxWS0LcUuFJR1ndt9pVCEiZ6BLiOx2mKuKgZ8sA19ucNxk3AeNri28xwJ24830dTwH0kG4Lg6uOT8q+G1H98WdX04Ffs7pyZbcxj4WL3WBDZOKF8Ve8SWopwD+R27oW7x8mM5rLGckIWMxkZTNSiq+8OSrh45KTFRzvqR+N72fu2Dnj/QmBmpLANJCGRfqeScrHWmH59978YLdn/g9PtoOA3x/gpYidibecM6Id/afoeQ5IoxIn5dWj8AleHiLQd6S58YYy6sipzn+tsm1p+zPuLufHr/gYicsRdPleVXnp02kV65eRdotutTnj8EWsyRbQcWCBE4vLY7LCjgWiSO0mIm86NaUWcfgtLOGWhI5XA8/iqIy6Vsps7zqyXOnsTraiz8xht9xsEKsWHRpA7Z6ho8H52P1UehxJRWIy34g+37Z6BTNKCT1lvg1zXLcSiUZOgcGohSy24LkuesEtGjglMuL8CI30E57njbsd/LsT0heDNkXwdERemknj+TN6wmpCSBf8qylkWmYKoWhZgoCyPUa8NxCQdykOcdQZZHmNJyDL3JsZ3UqDzF4WjNFYufRwln4XUn4lCeVisZcPiQ9iQi996v+SXYUT8d9lTM+dj2M5i8Ru/Ko/P/AT38vCpgoXasoGrmdeF9rIbuMLt4oq8Pbn/scRxML8Ci5mgMJqZaJ7iGyZLtMl6sJEnKSwiW49i0MBErC1IiHUuE9qdmF+7Y1wc3G3rU4/i2o9MN1QnwphHXPc21rHGjzF5WtZygqaap660oB2fWFiZYFf1eFcQ9XsnyK0ZuvKeJSyQPVJ+4iCHUxz4VIqHIOmKV0kXLSGDAbPyrG7+CahOos3yIMcrVJElwwQ03wMe++EVY+9xL8PhXvl432NnJFlwmsybiHKxHNF7L0nG1JQO5XDFlccMGb0rFBTk5jRAluxM7n8c3G0bvgmPdjt9rpyY9G0HprO6I/DWODG0V91lwzzWfh5AwVG9VKktxYOuDfKEkPOZST0D7vbpWCydLvC8/a1Zg+I4fwG3z5sCEE5ciGBrHACtoiEvB0hRAeh7ENIYRhbTx7oN7cv/ScersM0+9/ry1E+944p1r1+1/qf/g8NwgIGKoGi7Yp8jdmfum//K5S80mxQ6h/JBlaUQwLFft6rQMVjxcBMin9U/19RZvOhyseOCHJ8ybtXLC55fu2L51vVpcvetpORyuo6XynC6UlPvxOc9nhB2thK8KGbbn67af/Ru8aZcO7YPBxwJ0puWiUF+ipG3sDYEbcGzaP0BTgC4wpVAo3IIOO41j2iVg+vxBhZeuO873D/anGkF1lY6S45xe8y1bEYSXfccc9kfB0vNFXlXik+gAbJDuh5ynNfg2TY6CCALhlGKx+G+BguG5aHX5oLomqWjac7IWGihls8uQGYZrktUBj/RxlqDHHILSi+37IJOwYaFAXgCHgCCPKJpCqUubTddt9Gi1Uhzfa0aJ+kmObQ2pJvwZszKVaORBIRy5u8N3Cy1yD2zo6hJyhr2M+nQy6xcy1L2IoDuxrSuDnAu7EvVCkiBKH+ckOOgfWjGejs58ajwZbHYHthGZV4ViNrPAsa3pVVkqdCG72o59bRnVzSgw6wkPkYNZF1YlFgJn7Io5ppngq3lNH8HcQZbJdvIIOA6tyEA+hq9Ha6uHFOemV1E122YOr+vJatFNUN7RE3VpujlMYF2lciqpuN/D9idZ/p7NDPZ9rRIJfaouWZ8u9Aw3u8SN8hz/1wp0UG7RCbrtzpxT17bxHOiGmeeeA/lKBXq79suCorGFhBWe74UYCPOi9DJx7DIEBSv4XQSSUqnAr3Ar3vEJBdbOVEDrEd+girIax+WdtR1ZR0hfZJEXlvxc7syG1s8bpfH54eJezgJjqm0axwdZPZT3vCC94hNr+mjCDG1Ac2LxxC2uABMdAyp3/AF6xFkglo7abL3wnxKwqktSfWedDKnO7mDfIMtme03ur6zBNz/Tv2fox8MLhm+UFqT6lsjauX/aPvIXL+bPGa2H6R0uX+AJwr83eNGPhJswuHE6Sz3xIUHkrW4TSuXK1ZVM8Yf+Ybxc5KAYXjjpkvAFHQNGNreivLn3nVbRWpZoqv9kz5MvUMN14Vmk9ye1NEEeHXJz2QgSxVMlGVoLeTge5aB0WNkkq0un4VAjXxKbaFAI66PUjOS5cMiMy/ieyE/ls1YH2qAWsLSgTMHnjXw+v0ILQXdTK+R7uk9ziDu16vx8lyiLq02bbflC5hJUGPCSqmr1m7QGEGyVVTlP0A2z2Q/YEldTTVxkTFPX2AGypA2KIj/C2RYGXbcB8VKrLQjYCB4jeadkd6KZN1BTJZbVGOwpChb6vJxnWr3od4T4XD1CdpKrsUoOjq7DCpL0LgLSTmK5/X8ppf2DXBL6bafJz2VPQTSVAsDghdep73UydjfKXgRRTPKJVHRcWB52zHJwVeZIi0oYFMy+YD+moGrg17fX67ZzKgJNHRcscgjrZUXaSZCJsy2TQf2W44TcbEFbm++HUguFyUK8TTesOr9qY7oooWP6fgOyqsXMDBCJmw7Lm1oogXuIaRo+L7SLghgjtJo/C4WjeS4aIsOcJKkkNEu3i83cYTlGBBKvks3mJEXmeVWbxBtm7G9v2fITTqU43yZND23IL3Gvu+ojMHl6K8yNNIeK6ZEFCKIzq0lwflBRxBd94iRw1Bm1kZkoCAuevEZpgJ+gHU7d1QkTJkzvaqinP8oPDLhGpXwq6x93eDSttu/UEZvMjhniqw0JXs2Yzok4v5MCCc9x+zDwvIGoXASOba7yNU4QImoo0ro+Ohu2ORqQAgH/K9+EsbqH0ZrDT5zxz8mwMMqCiyxl4OwVEBkYCdwC2cyu2J6Dz5b29q586NbfrIq3xl9VuiPLwYidLzbpq4jhTQmQDp/9A4UPYvTPnnba9Bt32YUR1RI4f/0iU3Rev6Q4kv81C/9VPu6zUxrsSe2pq7NnT1y9x0x/y35q+5cYq5NioZxxydm/Z1siXIzqFrbp1nVbIJsvQpdXZSpfmxuGH37pZtj74ffCoH5o/1sf8aHHpcF2vFH9iM9ySg25EleGQcdvEtAzPUrHjEjRwmU+Ei6tpRrMtJw6k5J34MtyQM4k6Q3X43YiERiPoq52mACnyJLcultV5bw17HgFqxEjcfTQ5mf/iAoMbK+LUmWrIArfQWm7k9OEMC/L4znLDlVzTbwhhrV8i8V5hKMQSsRi5ojTzrbGBFsNRamIjCVHicPZJkkh2mnVIBGMo4ksyUCcY/JRrdVUxcrF4uVhLbYqadib6sI8DNruQscjC2tJ3TTe83WPkr14hS3Y3pOCfklyoxyL1RUzpc7BSvVcrDp8Xof3SQUMx4e7pBDX57qzUWqdVC3T8FliazVQdxCIl0EQZgAoUNdRTeqqjMS26AZXUtVWLlghDCR63qfeK9gGlE78vKBi/TDQFXjRUMPhrO04iNtWGO+l1ECVoIHmIRShTqaiooyM8ALvs40EY+UOsWial1Uj398vGgjStXWY6oKMouwVZVk3K+V5AQMKlmz9xZmo1HB6vnsg3ZvGGK3DxESlSc9lFyK41DNyjHO9WpTEDQlF5LKW1ecJYiKohggrTW0wS8jre0lv3gE7TugZE8e/7FC7EwPKKY5LVlKXnIrzMXEsuPhcA3GdNqW+E0qG3eo59FRWjMzelWXldbSxXZIkNrou5TwvYNGqbdnJ+qZBaFLFYBM9a7dtO/iO/F8+EOL/GcAaTYCLOCjfxUFZViyDpyjwm5mT7rqzs2+lFA7lG2Kp67l3piB36Qm9jfeteld2/+Cztuu1jYLW4FDxhof/tGPYnSj91vfkN0r7shfo2sCD1QOMqmDFslFzZzZfJ0+OPi5YLKmufL+7vfl0p2fgxFg0/ERi296M4biwNBGDb04aB5+0HOitmBjWwtWzkEwDCgtPgJ9e9h547K5fVDcPM0mIDn8ycX39sDIItOgwR1xedmIgadYGSZTv0nO5KxzXqQsIie8NappWWYD9NvTyEpeQRdxobaPnt5l65QYMx/V4X62mIgXb0mOcHxJRubKzkMYhuATFiWwlSVaUbvx7hiVVkDkUEax2hBTlWfS8tSdkhsir0ShneazeqOpMCBylimkPLVUEf2miEd5kjgJQK5BkC2NcryRJeZRRKk/NdjBdrbZCmA9For/wqLsBnXG8Uan8i+syZojOTb0OTuYnpmJ1m9KSp3mmcZbn+bV8DmouQk7D/08VeG5GUKAY3MkP50uV8Eoqwzu0eAC39aoK+5NR6MSxIbwEluWGqW6egrjUMYbGtr28kKNNCEhLavkzBosqL4tJgR8HEqfJ5XK6CQOZWhsjA2PGIP45AJyVxw83HV5Cg9fOok7sd5Atua6DuCbw1dwXJyDpjBrgC5xCXA2iq7RItKWcy56HY6j4rGDPdvYJsbDFgxj2KnrDqBjnBWEY5fhPcUbYx27B16JsKAhxp3BUn/aYVB4ooaI4RW0TM0ODU1C+zmVENFipc92YXihdL7DdDoLQ6Nc2WIhSZAIn5ZVz68DbFk41xiQ7MtC3lwUdPRZL/MFx7WcReE4zdeMbrmMdVyPbIIoy0dnKO7iLkTkef4gj++Nty7oRbZmtiMpcdZFGsgoFdU16COza4pKHdPzEk0+HBTfeAJQdqvg/cO7M2wKwOJafEHiFkyWb4Ey91tYM0UIBmvqHwY4pT/PJyIhbNhvTI/mf0XR+D3lX48PW+VMfm/YH/fJ9Q+WnLIfGq5SAh959Az8QDoofCieVHj389F8oEYWxKEo8+PT7ln3tpAVNv7h50465vbv6bhQ4IUJKxkJ2+oPSlHiAZvMQVgS4WEqBbxOcZIElJGUr+DYGGrxHJZuBT77/I9C+ayeYuSwyEQGdQwCiuwSdmYxW+ziWNbVQKaMDwybVD+82KD2ISCKNJsnR4bo9vZLnFSnqOu45CNij8gRxzj0TLeIsv2ZUXJVVgFkqhxA1xVAqoYmqMp3oRKoxqhEtHL5TDYXWuLxoayJXqeSNXNGzS1cVS/RNakLOiiF3skRWHlTLeYUUzwtLJy6DYsUGd+O6M9CRxtUS1DY2cq/g0gxjGijj8HVeZsCJkbvbp86TdbHUGuyyiu+z/PHU0ajjWwbhYlEoOO40alRWcNUdbSxeNLqUfPzwvVisHQgOci6fldvtAswjTqB9OpC8Tgv2Fvrw+8RkGAkL4xHtWO2VVMvLKQh2H2CSjaOH5A96ekhWw41hNcHjXaLo1xMJMWuHzfhlkROGkDlmbVHsQUBo4g4rysRPZF3LHtaUKPUiguvaJq3WJfmcYxqzrKHBRhybfkEJb7Zt42zst1BLSxDPcfopRjo/FGsUFXsyW9kMFkIAdooC9xwFoQ7BawSBq7rDAEHcLpeP7xK5V+yy5/HDw2rFzi9A4J80Ot/E81YicKyEsWN0qi3FaycKgiHa9Y1JoZS+MVPOnsHelkR1BxcK3Uwdbw/ea50gSwccBCyuGgJHBJ7vsqifcB3nTBzH5OgVTct6J/7xTiZrRq2NKWwe2WoGyTbaThCF2b7MD930ZRATKRxz8s/LsIq7D3JD+wd+x728YZuyYsFXG5JxeDoswpYNfWC0NpaUutQqs9B7RTFfXJyMhaafvLf74d0zx0H+rPmrp6/b++HduwcfQqZVXbYWebZV4teVrAle0D1uTHcn4+o3W06c9o3NYQKRWNRptrxZnQMjxzOg0zS1GOe4rYbrQHEakrZ4DEEUjcN1zzvYm765ZWLLhzSe36ZxwdI3yPE4nHT6ObDt/t+ByIVYIhXyREfnphk002DljlVTV3T9i5WS9wQvmTPxe1d5wRaIgKUARumcy0meazgzHds+5YgsPrx1t151qzGyBcFXbL0ScRy36dAWFzJM9corsuFsarJzsGXSJPDKPvyh2AnnCgkgja0QizaQ8sggkpxqzgvb0IaS8uNrVr+uYfyfgM76WW7sLDsuLcni5pAm62VLr3Mtq34UYFAmFlgxaUu2QvdaZdsRvIo4VlfL2+A4eWSRguPQ09Dhph7Zp7cunbGtLTK4Wl4IcTcRx2cZQLaT+1ssgrNSBtnmPEdAqUTmwlF7C47O1bAFA04UG3mBiKZphghlQFvL5/mQxzkZRFY4IAriZs8li48oUlbVnBIOl9slDbpdccC1rTK2LtjLiUBymunDF5CFvYEevgLB7pJgo3RQfCvokWR9PoTcJJ/PR4ntNI4e/4MybMAyjCGU4nnUgp3o/5Nr9xMJ8Rc2ytHYWVG/IHFWs46sCFiO8+iq86OGzNTLCjZIVDiqWro51XbsuayPhHcmuY6ZRjn4CgLWNATF40YDnSTJ27HtXa7nzGKV+9xRRcl/Ja2M466kTotoyq+KxGKBqrR4KQykUkBMC+B/6Gj1t8WJo35PlhWc6PSpl78y89GnT7yYDaIsB0WagigDTca7RgtYVE3LXhlJbVWjEej71HnQM7fp4YkTElcLh4lqv5a0HZtudu5Qnfptq5n/yo0xGW5feBxc3tGyO6rJmwKOzaSiJG5L8vxQ2PWCw88Smgy5ipHY2tl3p+mSdioKu5c010ObIgfnOrkoDevOPA/mUAXm9wzCnKEs+A4ZQHmy/zADkJA9XOpQ8lOk3J9DI58wtuDnsQIarhebrWEoPxlly9TD8k8uW3TnqyeiHsG7BUmKy9FonFPkBgSbutEeS4paxkHLDOR6UcKWIFMqj7VibSwO+VQjSILvyKFQ+rAEhIDgda5eKj1oV8q3ctWj14PribK8VpDVdaKIpFINNwiC1OSP7sMTkKWEo6UOPQ0TVUFB5wx5o9/DdsjJeoPw4jhERhbJtdEqFWxQHu+dY0wHn+6hzQOcrKhavZ5KiewkcVaeGMfnPnxuwLZ2S0qCc8np6IC1+rEgxVnxOI6thHhebRGjKvtBNMtGtKyXZccy4yiJEqN2gGNUkhWtoPJ+QZSEjbU82KjVUASznhbPLS9Md4HhmrvQDvrh0Kpy1HadT9qE/AKDywcxMCUP2w+ZQX3aE2HHb4PfQHwarvUL1EgkR/mI6fPhtKKoO0e3e7EW27Y9UxXo+ImJONiuuwgD2vzDEvlIYVghLecEbJc7ZAc4DioPVCWOUaEoYflaaMPXw8ja/wXb9nMEyi8jwHdUC1WRksvyn3xBMLGPy5EDd9T8hF1Tx+/q1dM2jgQhVVXH5eOp0O8aO+DB1inQdf0NQa4Z/gd/B+JtwbAufO9F8MjDzzyW7ht5T/f+4fvufnXDbVuHhiE9mEmpB/rbpYr5DkeqbrkZzOQ7Pvvi+lV+efIdMOyWinqWq1vWvkNItn3KW73xB74iK0dcHDWYGA3dHn3n9Husnr4PwLY9nD0yxH31xQ2X6CX9XGDpraBC2plzcCB7P1rIPnNH7/Dvsg63aev+C7KD2Y668c0/k8wycU0Vp5SVuvgCmjeoTQkaWzETOu/fAMTmIdQwM+9y/mqTVs5E44mNRi+02/BYhOB5B4GGrfbkXcPsBxXGIYs7Ha8ZZhFZlpVN+Jmvov+kR5BCNURjdbxLfmyYxvRaNXsjKFo9asZWHkEEmVVgPxJKnFiiqbCqwLYjVWAWEqVREM+qyCitEktcIe4Kr6IMvsrzSeNoyQOyDf6IFVte2CVr4V/GKmbf2kIZpkTi9T54TaNSlrpOl1Q08/tPOQdMpxBXd+2cGEigKhIP8wJnmQY5AQHr+NF8mKwqP0OUeVpAJoxI7CiaepZZLn2O4R8CsypooTZJU5TjeMllTv0w+uu9+N2JyL3aXDrTc+1loww0nEj8URKku+1iLm9xfKWDp9N6LfoHj500iqzHNiuawKmqpEUn8rbd4NcO/MPWH4wkQsVEY5yW9/ftQPAf9ggLIgFvpNTnBpsKRWPAqACNJnoUSX6ZEvf40b1e1f3KnFZbET10sA7P56npjqioEAVNmyJYZoIxerQBF8eya1JEdcY7LnmZ59bj90jV74K10PE4xXOKipB1CVmJ30lUa+akblXVvkQsp88AC3sSTokef5OpVxYG74tSUoslkiCLgxLh1lODXoHjHq+1UA72z47NJttbGPqjHAk95ZlOi2U6p+FrQVpClpS1osDfij3P2RzVQ9GEYpeNByzbmljbnN2kI5GzLBEmLjsBoh2TMFCbLP9J/qf26Lw9zsOqw7HWpONxJqCQL0+5554nfhoks5mHuoQtl9ROqgzCBdsyMZFbveuH/KvbgVNUOFAx+v0BnRX/sTXWC4+sSvU3N0+I3qiXc4/bHlzAr94Y/LqJzlJbtfO7mT0Sh8b7e4euCjJVBwfhXn9n9Z74tERxfOeKxXKjRWzh0C+jCIgw9O76Zri79sJHOGJEZe3PNmfOo+C+d3T7S22Hvy9r6gMY5UW9ULhckqQhORqxUJZMJYRMC87prm79eSokck9iJAR+9jSIiqpY3rarH0GObbhk1fWia5mybVood1y5mrNGODGMnRvN3kofLQRHB/f25mA21EMDOvyEkMIKsaundHLiKlsQ7nU8+nEGkkeuMAYrZTtCmvqVesd86ZTyAOSUOJimE3FdIgSbyNkWFS00jJBkNyw9CUrbN2q+vzPp1U7QxMiedU1LIY692KWk2a9KpiEhEr5/gVF84w1kptHWNlAEPlouFBjrYkcXCtT3wrLH8ZcjHuNF4HYyElRCtilhgVLvVJzzKbUl+Aw69P1CRH3qa8N5KFAfhnmu/HMuFECKUC1fYMtaom3oSWQTMb86/A7x7O4OfpbOVsFkZbDLqHDbcDonsOM/8brlUDg8uFtS3Sm+CYliwYT69nsIcWZV84mHFVVxfFHg+b2e749DqdgSjsQGxfq6UhrpoVEopCjLyweLgb5llyvdrScvJB2nnQrrfvSrbXbFHMS5aOer2b4QxtMODFgFm41X7SjjsKq9qETDv+vOjPiT/RAo9TMjurnvChyjhdUtskKDoEWSKZ7z5Aj3TNbzljqmccVouUrV5tgWG66CAe4pNOFbIi6fzlB3Gc7JAjZXbOUVGdRTRRke682kYXo4CsloM/QVu1zLoyCyfYWmEXPMAS5nEFh46rVBFiFYxa4y3H9ewLp91wbg6pR1bAiSUfW1iQ3JO3Tqa735iuJMbpblvb0fMA1nUQBilEI0qr1UHw7fEw6rnsgLRC9Yr/UV8p81ef6ctxwOIwnznLT14oQpDe+n7Ylf8jKXQgf0h8rGCaVs6RN+cNBQwMD7lzcnbz932ZJyYqRoczJf/v1I9j0vbt51SUwTB1c2tNrL01mwyzqjSWzCglSvQujYCueern305GRzp6aFvud6pBcl4GnIPKKSqpUVWXxelZV7kcJPkny6yeekfkSwfuqWLZ+6P5apF6GC4CiK/KJnlblxtuF/sucgbBJl7lmf/FuYOn8WkLq4LoxYutnPEUeXqfsN9PFIcCw6pauKbsGXRsUw4nwZCiipfTDKFbA8vypDeLHga5HvS4rT59nuSmKbKQ88QVE0XVCk9aqiPUyIuW7+yJB3O154Bo98SFE6c475bRHlnS+KthLWXpXjszwli4qsrz/rE3KnRMkjPFsh5eUunkeJQcnrEnH6NcQQRVP6e4Df9VoxDyaOk24b0Ej5zdjWz8oeOhlbPLScbYJlO5dZ/eC3tcAIbYZdQ0MQdW2+5MFGzbU+I6GOQw2U4YqFNb8bykMEg9lNOH+7BDG3OBn9tF4xuF7L4QRZ3qW5vl0m1jae82/ifariOLmJ1vGvtDWe4X3+9R/ANJmk2wX+TvTM10zieEj8yhGANZwQ957UHNhVGIY55cLWCWroiyXJ3kYtZz4CpyrLalpVlOeQAa81LGMGXrtVIPbGuA4lNRTidSK9prjiFwSK8Oi4Fd/jt7zSV4BTurugId2zx/C9z8YJHe8i00J75XhC90gcLQiu8+N66mpIgXlfFl+aXsr4azwTPqtdDW/yJqnQLfcovrceBbCvybLuaXLf5OIIPGXavalk0zdF3t9p2+5ythuB43xfUtVBXxRWhQT5ydNLep/u9nO9otqneeTrqu/zjiCSmCK8sCc/BGusCly0VIGzLh/g3viB+bXCgNCUFUQuXdGH05AvvYEAFn7sIbjx9NM9Vzf1f/pK90lPb4ehofxHLUnwEx8+61/c7X07hW29gDMDdNkCcMt2C+w9uIhFcLUl9XpjS/1KW7ccUXfBz2JUO6B/3DLc24ItO0fjPs+JwyOlU/03+r4ba2u4Urd0pLYyxOZNudfJlDlz655rGRBKsrznoeMX3d40eTKyvXQg6SdPaHxldzqzIN09dOl5+7uvb+fESpnn/+ZRsUx6mLlBUhdt3uXE4t8uu+U7Nc9H5i1SWavPlfMDVsThu9Ku+lyT6ArT9IzQ55JedOx1Gou3rg+vlaLQ6FegXjdhtq7DBuSYw6r22BJkg0WUSVnb5abZhrQRaE+dDxuuRHbwRLAHzoerwRtrG9tAuBdMuJ1ycOfIyBHtvDyyfOQEdfAnnTJ5yHAhwkoCeFUz60Ql3RaK6t/v6YMpaKQvsHooo+QlHH87spLNPlhQh9ebnCewe9pS6P7FqyD7BwszxMJv+zCQ6BiAWwRO1MDlBY3fDwalOv6r27Mgi/RjEFkjq6nYPNIHt4FyoF4Vf2oj8zuAbSelYeikhJ+A9Oj6j/wLhBC07r3+eliiV8iZUeEvkfnz/1LZuwvEchFOKVa4R7Gvr7IFG4GHrCwU56Qi/2Y4DvSbJvRaFV7wfD7BwdbjONhUh2NkSK3QPvsS7oUJ+2F+JQLqhm53WIRnCor8zNWocN4gDuwpeFyfPQxZwKiA12/LD/pzxo3fqNqRfQWhVGd7qGQ1xSAhNd0/lLdme8aGS6gDDyC7O3VgJ9wmSNB+/AkvnXX+O1btf+Qh6N+1DTJOBXZ270CWS2CcXnJwnB+WKCskFkByDdjhipIvW347sdcuxbF4WRFQMViwEMdflyR44sMyFPcdtPnnsk/P8uFp1K/wmIlEZyQLX88N4JhS+GCypSsu1/24wGUf4ogdRclPk+FooSEmj/QPFzzetKBoFf33SuqbL8jhN1sxxmZUCSS7FByUyB5Tptlw/EUjPr2ffzCb1yAjxaCrZACriGRMdwDHVngbYMXb42e+ZEHwW6Od7zlj8XW/mzZv5zdPXAi+yENrKgKTN+7ilIo+t3Y6EzglY36/KFyTndwOwn4D0jv7PjTQ1ffv/t/rCoLMyHDxisGDxdsH/7AGQoMVEHsHTuIO9L67mmFhOX9+cV9dtKUPQSLvEegnNmjoCzeeOPejkfHNz+/KF8d7Ev9XNrP6RwxmgR3uXxn0WwqukTHdoYdIpSdVzvRv6y2bu8q6r7ievw+v32aW6PXpIWcW0sNZ1PEEn7LzZqBok+AXgUbLS9mejAKpngzKzorv9Wz/SozdnR5xX0YAm4vf4T0aSAB6WHKBHXswOHUKzFu4AFKp1BFtFogEH84MEnD0wQ12ed8Eu7zrulx/99SMrk8rVcCt/fwZi2Ys+fYkKZMez0a1TAGZA9Szg+bYSqkYYluXIYkSbgSdbQ22ZyrymrmVkhOSRRpmuUH8/hA7+SLQaaMGx8E4cKAZv5eiXrBXsJu6UBB479o774QTTj2VS4ZV7oo7roCTLzzD/8TLL8KZDz8Ks77+HUjhHcez6pIaKLNUscAAj+08QIK303PhOY94f0GK90L14C9owECS9EWIhlK+4Tt+E8c2MVr+q8SCzShRx7EyKvzc83bF34WwOwLOaL4RwtSG/uxQuejRbmoX9/RXcr0PZwes581hiGK/5gentlYF41Zbhz/n+r2J7zwTBE1lJ1hABWeE2bKvqODVcoq01vY6bNduz3JfskokXj1jDHL4WtGrBh6Ub+A4NpiO7bMf7AjjvVrwWXAdKFQM2I8gQoJdzzjfRpM9yy71nGeVdnhWZXdUFIfOssoeSk4MWz4o+JnppPqLAd7YirM/dnSmY2KrbD7IwLjBeB65Zi1wb48fqHubnOnu0emXnvjp2XkO2E9I5hQNvnzCHEggY1qVLTbckS2tAFH0RE18NBUKDWuKfBDW9gHRnctGsvqvfP4/MJhoUXou9xmhMV78zEVnfv0ua6S3d0/vb7mpE6IcSj+7aEQ/WU6feLJg/7ERHXJxLAoEweP0lobnn1oy+Xnrtd1/VbWLknjUXrHRA1SqTlRk5oGGZ/p2cAxdkAcKKnu4YNmMmbsUHEg+Sgi5txwKyCKbwIpqGTgdBo5+DdDGdUwGcfoMSDlu9ZwpBIKnR/qhu7kJknjdxgULYPfuXTA0PAyuW4U0twZqBQZC+OdMvP6WCIq0cBiEIr6O0Z2dRiFSb8xIRtU2CfoggIoClNSAEmUKiKhXbaZPueruDe6w9rMfPjDQaX90y/fgwMTJ0PHVm6Cvaw9Kahd4BJoSfuZ711wDi669Ftas3yrUNXDSRRPeZdevnOztL0TAz+WE+e+5kg6O9ID/3e8EgYLdl5cRqmUODE4I2ikeFUC8GkAEjsr6inbAAFkeqwD3gufo54/+qTIh2FXsgOyJwRzoOMaWyFePFOSqYziWfajdh/3ij1w7QoerLvyAeBRDqa5kc4fmN9j4zcPoL7H6CFQzJk+B409cBmt6+oOVU9Y+Jfi8N3am7Kg9sFdYlR0DZ48jQeBykVk1HzcT4td8CLyvfA7c9AhUtxrhFdhcYeBcOH8RhBrGQWr6XiinDyJcS2AgaxV97wg7dGwL/treyH/aSndiu+CwI3+oD3twgtpCKiQVGUqD6Xd7lh0XQkqxeVz9dxdMGr8huzEN2T0jJ+/py/ySMAf8D6M/Oldj3c1rdw3RGUnxmy9ffv7nuEnJsHDXk/O9HF3U2zVw5SXLW/6oSjLGXwjirI0Oa1hOdWvCUY9KqQQXXXIVrFv7evCz9f4okKC3mpoIpVgCxJE8WG7VqY+m1My5QuzHNeQQbGmtgyl96erPW1EvcCioGSg7ZKq3Lgp5rRGsbBaGkAWyxHFy/ATIvP+jsOi8dwIfjQUOyYr6dbMEI1++HoGnBDT4XTPUfZEIzG1Mwrade4I6slpVes3pZdi/8nxo+8DHQE7VwZzvfBVeyQyB1n0Q8tlsAG5VFxh1TA50Lw0vxvaDzE4b+MR34P2nnA7L9+6G+ptuQBZcBCpL6OB0NCDBpJY2uPimb0Dj6WdBrIJS5J77wN+2FZ79xhdAHM4EvzHZkEjUColFMrGthcbU2X7v4BBkS0PQ3tZIpzTEYML1n4ah7303+G1JdSJA0y8pDN8fgru2NkJTiwIVoiOK6wBHpTLZzwWqogJWLgvDKIci49tBK5UhguPWl8+DgKzF/ys7LyxRYvUQgMIeqCMiOLIiYR8dG0GfHPqGUjsahzGa3p4DsFUfRKEtQEQLAxdR4Su7tkIbjrNUA1p25ChejZ0WAlYoDLsSKWgeyQXAQ4wyqMuWw03f+DrwdQ2QVKOwP52Bzp3bYHcqCdSUQEdqKVpskyfFeEhqlejV2gd21pDFSoTbxsFJ370VhMZmaPjJr6Hwxz9A/YbN4HV1QaRlInS89wqYfPHlkGILR9/7BNzyoTKywUYQpghw4kA5KC0Z7eHJy08Hy7aOAdYRjcEB7+vqAbtionGJkCdUfHrvwSvZSh1GNE0fLt68cXj3Be4efUpxIP+AZbox+E/9VloV2H5676pbpnTU98W+fOXd5d291wkjxZlUVWHkQP8535/SPF6SpR5Gi88RFJivyjADnXJqNAzOUaDFTsdUkPrf/M1b4Ybr3w8cTugIAwI0wpEW9nkNfvWpcTBrQxd0vizCYJoiKDOQ8IKfASthH1dNmQQllGw9mgy99XXAFyzIcCF4CSNsD0bAbiYFoyHYHdNQVqRAbG+HryMQVLr2w1Wf/iwICJiktwcgm646zv9h7zrgoyqz/bn3zsydPplkMumdBJIQSECaBlCaBURXVhRwdVFsWHbVt7bFtqtgwVXXh2t5Psu6yvpUFMUCylKFgJLQAiG9l8n0PnPv3He+byYNAm6x8N5yfwwlzJ357ved8z//c77znYMsxtfVDpJ/aLE1EQWb5zVQOq4IlNVq4JApaNR6mDn7fJh4zTJoKxgFjNcDvEYPSWlp4HT0UreFdHGJR6XO0ZlA7GiggGxBMd7v2wtOgxsSUnLBeP58Wtq3aMJk4D/aBL6KXcDu2QnWzVuBsVhRAdLhUpwjsivbhEqXlpkDAipvG7rBu3LSQJ+gBXctWndlNCMlWhGCJGqFaBoFy3H9qT9BBGEXauX8LIDfv4Yrmo7v51Hpke506tXgNGogTxcHdgRN1uOJshK8twdxZ5t1N7R7GihguEeMgCxUajl+9n/hs/I9PaDotqJxEUCDLDMlJYV+344kM4SyYu45yqfL5YAlI0KgV0owus4D4p4udLEjsMNopN2OQjotPPfUk2DxdEBiYTLwWjOoPF74CN1Pg0kHZ3mCkBoIgA2NYmccgo85EVL1WqhVqaAN58Ld0QXlE2dAys23Q1CFDNbaC5nIntPW/Bc8ePet4CZHldBtVzN+mFWQDSpDHpi8KujsdqJxi+4EezQqOGzkwTtpMlybaAaXpYcRRxZJ4qpnYGZPF/R+vhE0Z+NamUzgxzV3MBZwu0Lg9CKLNMhp495tWSaINyDAtzbDTVddC0uuuZYkxR6vUHL47oYM//8Ai9B70j/wWLcF1oesRExBQaqcOd0TO7ps5fFG/Wc5yfH3jSsrbNrw6taUnobuDyWJzYR/trEjKk5zh3NN6hPvNSvLc1Zljs7/qDMQnN92tGnV9m9qrzLFx630oMVXJMVDiUELVzfZQEJAE4ZhWcTVYTkGCvJQyQN+6AvKS6TphU+E0alxMH7BeHivNwj7KszQ9qUbqna7YIfJDIcTjNAYp6cll5U+P4RkSPST1OCRtOBiRKgRA5TN6AnNR6XgOJGWWRFRyeRo9Z96aAVEQiJcNO8SsCET4nGMLocd3n7tBZKUGGu7Hi09zcSAQKVRQvsIG2xu1sL8p58H5VlTQAr6QUVcAI2WOVy1S2qqryV5Xf1VE664YTksW/4rOPLhB7D5pdWw2dtDyhogEODn+4Jgb2+FvIKR4EeQrKrZDx5lGOTTJ0GoOB+s69Yh6AjwxpqV6IbgyioNUDR+CricDjiK4EWanQYQ9KFwBPy+rhr+2NMNCiV/0qXjkI0aJwO8/iBEi8J4o4MkMRba4RjnyaBWQTGCvxMBq8rpBCsynZ15qJyOo/gelnZOJu4rdcsIM8J7PWYTjMH1sDvdkJicBmqtjjYdDZL0EmYgrMCwcshJ5mHeJC3YpgjQUhYHoQYlvO/Xg17OUiYXCnjQ+LLU7acQQvos4u0+dCW36ZWQhMDmNRkhjOPicO3lxN0Pi1Tu2SQTlF2xABRaFSnEFy1oKYhMZ3urRHLd1Lj2TnI4nZOoazht5nSYNHMRfHrHs1Bz6BBsSU6CrqQk4HFeG47VQM3BKsjKzZcO7d4Ggt9JG8gWz58LDMpt2OOOzilpwIveDMfRKibR8yFoFC16DeTOuxiWLrtlOLCCWMj0349hcchgGHcY9jR2wja7hwTASa0jsDrdi+RKeaMhLf4mPixvyQ3KEySb8KkUlopB/i8EAUn8SJTUrc2WtRkq1exAcfoB9fnFtXEsN9VhsS+xFuY8iaZDGEssOwICqdxwMnAkoNDS0AYeT4gqTr9wS6QmrVTs9ouNrja3DzUcxpbpYPRkLWx8MRGqmtBa45fwfnLmjFGJESkd5bWeHCAj6Qcc8gC5GM3LiSUqyNCVyw+HRQ1+B63a6fN5PQ/ffxdlCfMXXAEdyLReev5xQOEGBU+CvpFUURSSGEbgUHGaEVgtJE0/qIrAYwWZsNDeA+ei4h6tOQI7t20BvcEgHavcrrXZrJfp1OpuBLovKCgjmJLjGAWXXg672g+Ba+3roIkWayJ1vpPfeOX51PJzZ2krvt7RWn9oZ6Pg7Ip2GMNfKdmFoObjgLjupEeEy+0p3rxxg1bB80gBGY2MEbuBkRrIMxyproYVv70bbr7zkWhexpCYT3RiVeobQPVmJBo8EqKgxcvRBQ+GFkhikHgxf8X/9ZKqGBq1GpqQLR0z6ujyReeT4AdJ2BSTRClCTzejMTgkiaKbjDnBYKAurJvsnsVy41hOlkk6FpGzg4IgdHGsojWCz6MgWXbTEoEJoJtXLaCc0EJkCFswkmG5o8S7ww+LI7lgOF0tMhq7RIaqUURjUUI0Jolfl05OPuD/2gCZ7+6vPofsa28DGc09ZBklsq8vPl5H3HOzwRh/mRAOH+bk7HZi6L3IkBT4nOnXToSXnttOGTYXdfkVToet4PWXntelZWSzB/ZuczHuroPk2SbP2AJX3rwiepgfgTWALmhHYw0JJ8SHQ6GfSxLTpFKrN8rImhH3MnjS0sjSvyVgFS69jAq3OXVEtBB+LHazz2Z9ivto828LBIWrq7LL8OT7Bz62O/ylIP8ehk2snyiZO+s6NvDhwGzZ1MKjpgUz5iPypM50h8RLcGHJQT1/7EjQyVdMIp1UUHAEGtDsEwJRFEsq9x+svPOP6U9efvml98vUcbSjMYdg3OmogrC3A4L4HcTa43vH9/b2/k9mVmapFIl0942PUQw678Uw2fv3798Sb4z3Eh3r7u52y+XyxWIweOTRh+6lbKWlpQl27diCQqvCF09Y1sP4+VcYDAZLV3e3qFLKb4iLk2+lMWYEIYelBzQ6HezbuxtefuFZEucaha+PVDxnd1otJo/XW5malnZVUXFJMIjsMYKvEbmlEJ86kmRj0/hVfUPzQ027v15YW1Nt6ejqUSZouTV6hfwpkmZBcN6kCkJaikh3neTIRLcfci+xu8LnWXrqR5nN5m/jDLoNKqXyGaJ8SpUe9n27H/761utw4w3XDzmTpFapobb2EKx/cQcoFab+7StOyco3V4qviI5mVYARIs6AdLORFy4SGZVFJIFsEkfzBNDdVNLgPinA2NbW+he/z4d4pq5DhsWXZPH3qRURksdE0u7hQL0VHD4x2mAE18Ht9Tyj02qnG+ONvZ1dFv3fqhJe6PVwj4YQoeRoOI9VOyDQ6UPGRBuFsB1292tGo+7ReJX+o+ZOy8MKOePLz8+4P4yTQMtqy3UQkRsg4PdSWWlrb3sZ13KHRqtdKYgs7K7YAxPKj4I5MZGcOpC2f7kBqvbsLO3usbzt97oOePzhW0SD8gtdMn+vTM4LAZ8HctEwJMQnQxu6cKQXIl5jOtrbNqo1PTtrjh0VVHK2OUGh+DXRra83fQL5RaVwwZU3QTgUgD+tuA4q9+xJdisTv/D5e/bLZdw9hnjT7vj4uF+4nE5cdj+ggexryPKTdqE4LQDLjEJEGk4wKuWQn5crVS3jiwug+ZANKpqtf3K4glP6s9O/l6QOBkLBcHpnh/2LrJc/P++ceaUNvxyZ2KoRRdYfO+wmDWw2nSyOTwr1QW1dE4KWOwo00fZZV6NCHGnptM8rnDBvZXp+iSccCpISJlA61QWNtUfh1Zf+SAP0KJSyiBTRyuUKpr9rjDTUgJHa4iiIpDLCFHxvCyraLqMx7iJTQvwRUjt802cfwlmTyuGOex6Eg5X7YMe2vxEmYcrJztoSn5BwSUtr6xqbw30NgsRWUtOIV6ggd0QRuFxOGDdhMpSWlsKxmpoHQuHwwbJRWT+XKRRJW76ubJg5+4LFZ08/73UUXPJc0tgJ58Deip1QX3uE1MsiIyS4/iJ+5m/xYa7wheUPXH/bQ6s5OS8R0DLpGdBYN0DQ70I7w4I1nHE/p8srfHftW+uMCQmXx+vUdjEU7g8xhiQRXZnqoY1qaWkUBh5+8ClYt14NSqV6MJDrve7eixdddt7VAUfbhl1HWi6V1DpFD8oJAUEabkD3mbzoIWAqP2xcWnran00m819FQRBlMmtHdn4OzsMkZGp+eDypDPJN2UCKS4NeD2ddPi/JJQReRPaxIjkxYfVX33Qu3XbA/qgohGknmZ9NmwL/MaMM/OhmyXGRX3r//a09QeFCVqH9yO5umyaEQ8t7bO5Y6EMBq59fCRlZebD2zVeh6tvduE6SglfJeDkp+CqX03jdi8893h9zJd/jcHlWJ5qMX6QatXcggGZ5gtJN2WUXqceVz3MRwCKbB+XnzaJgj2tHcgLVvJJ3FBSMultimQATDjhCrt6oLCl88OWmTfDtoWMIWCE4crABIsasMltHZ3pGetoCApKRkPMcDomh1x+kLM5oNJJOQ9JPjRWnBWAt2HtoaCPl2KlMHZo4l0LDPvN1xZMOi2cRKH6A1DVkOG5POLOpyfL2tOaei01FZotLrZCILx90h4A2EjnV7qYYhqTUNLhs/lzY+bcvQImUnGU5vr6rd35uTs6t9Q2ND23+8rPzR7Y2vE92WTRqHYwqGQfFY0qhqHgMVH6zh7AV0rBckGJF0oZj3AQsAoGAaLc7XiA/12rV8UG/9/X6egepJACpaemwbPmdqAhZcPHPFsIfVj0Mn378oae1rf0Cp8uzAQ3/CDVEHgnYLAjSIZh6wcUwsngsqacOOQUjmSeee0W2/LrFs5wO+32dqFwjsjK6NWplpSwCY1DyGRfYcWisRJhbUnIq1COoEHaIjNGJ1+VOp6sQ2UP2+bNnP7tgyfVSKBwFoTCykM9f2QQeWxhBUgZOhxd6Gr4hxaaE5qamcMhsxjmT9+ezEVAXEOhkLAcBslGg5MEgUyBzaIf29jYoyEshFUoHwgksa7U75Cs++OTzxzQaxYNKnt+Aru1GcVCDEOJgS4Pah0moji3NLUttVvskEhLklfLb5yxc2JU9vpzmun1bvQ9uvetmOk8MAkhdW6vXHw5fhW5tEd4+bnTJ6DUGQxzMmDMXFTkeMkeMguT0TCCdhlTIBBfljPrwiZWPPorgV4quqZM0gyDARp5x0dXXQ86Ikegih2HajNlQV3MYB9QZzbyQpP42W4erj9D4KBNrf4efnVw2dvQqEhPjWF+zUeG7byber1RreWS/QfLZtEZlTIbwnoDX58s4Vnv0ObwlYNQqtujU/B/I8+WUTIZASABjfCKOVwVeXwB2bP1qo1ajettut291eQM1i6YnrXngkacjzYwJOIl4D+KZPKz+HSy0JEHpxCIXfhTMZ9/b+2Tdwda7gJf/gOmzDHicgUnrdzb999fVjksDe78Rr1o6E8qnj6IKBwMpRdJwlJiUaylFdlNZsYPUkwdvMDzF5XJnNzQ13e/1ese8v/bNCwtz0973+Xww59IlUFw2iYLM9FkXwpHDB2K5UacOECCzYrVanc+UaH6VBcnrsNtWo4uRTapX/G7laigpm0AqmIKlu5vE1Zh7H3xMqjtWS4o67S/MS30LvL0N/o6uisa2TpoFMuGhc/vdKjEs4vNbI36P6xAKbUmv1Y5MQ4CgIOYJbsd7HW3NEbmS9qUAW68F3c/9wCArjnUNkscnmHZoVYq3/F7PjVu3bS+6dPpECAshqnAEXG6567cweko2tDc3gK36bWRmsQLriIDtXV3UypPYSrRBgwRkjAcP7IPxk6fCzl0VUFGxG7Z8+TlYrRbSveb4aUK84w5lJBvLrO7gaHTZ3vH4QiKy1cekWG/F9PQ0kDFcjHGRkp1yeUq87gm9Qngd8QjmnZWJBmQMzkEvfcbErGzYdfQI/ru/fjmbl5P9Vigc/Mrvsv/aHwjmZmTqYOLZ5RCPSh/w+8Brj7IXVgzivwN7FHKZp6Wp6VEcwFekLjUBTHNyMlz280UQQDkgTDo9I4tJTc+UqqsPx3adRdpqi4wBmTDp3kxBiIQRent7A71WR4nVZvsqPiFRB97APGTr6yODWzcN2ciK8Bq1pjE/STtfp9cEejtbwd7ZDcVji+H2ex+mLRNJ3wQZJ6MM6vcrArmWzuY/KWSKu3vsjjn/s73r5dKdlRWTZs1t83tDp08mwekwiOoONzz4TiXNYtJoWciNk9PmmVaH/56q/c130eaoP/hMcNDWYpnX0WT5U+TI4RteeSEMM+eUIJgE4bi8yRNZFoJPdkERmFNTwWG3g9PtujXJbHrXpJT+EDImFlvswacDwXCyKIhdxvgEuk3vR6uWl58PBaOKYd83e8jBYh0tQjroy5ihO6mcXKFQJyaatso9nT02S+getIT5pWNKv50252JULjvNiu5rk9Zr6SEuqtFsTtyCbuM7Ci6aLBrtG0iYT6if1fBKlVS1Y7PIhPxP93q8awNBhKrObrNOo+7+YP2Hfzlw8AA8v/YjKuAVGz+moEh2JKN4wOoVvLJCyYqbw5Jgdnq8N4ZEOyjRvS8bexaYMzJh8vQZpP465OTlwaGqPVB79DCJdetwPhiib5POngpkXvrKR/sDfjjW0IL3dsLqR+4Ga28vZQIGnhsmFMlwDpfrKZtNPKzQaPfLOE7S8lKNQhFjK9FCp1FApH+SUwES397RdXW3GEhVa3hFd07iZz5bR4VCn0yruhBwUfIK8Mbce7xNp1Pylbpk89/c/sRyS699cUnpRIiLSwBPbKctxvbAabPDrh3bQhqNdl9za+sDvEJxV7ToYQRGjylD+daBy+2Msc+QRIwdx3HagN/Pl42bAPMR0MjV094AWze8ScdMjGBTK7dq36HGZwOhsEYQpBlxemU3q1StIymm/XmBJL+N7EjSzQImgsYy79DhrkfS0kw+gVF69Tm5L6UVT3OTDS0CUn1jDuB8i2F/antn9xssr35ejmpI6rwfrq11Tr1ARsIjpE+Aa5gcoX/PoHsIqbS7x0UyBlFYWUjgeLB6wlfX1lkej9X0+HEGQlsWi9cbzp4anFSef1skHBlMdk7GieNEUfSipQ2rTZlwrKUHeJ1hQ3qc9ouIs6sjJIUrQ3ot43PaxEjQC0GfGwaqY3KgVmtAqZBXmxISrmOkCCny1odQIA0qQctIUrvJZLqNl8u9zU1toNcZV2dm5TRdedU1QALigyk7si5p/Qdryf1rAh53x8GD1dSinjQMh0qs1uqRAaR8mpeaOztd5llY8e2++rjklDurD9Za3Q4nHbPX7YZvv95G8+XIVr1AklcNhufVOoO9qqoS/P7AN0WjRonJSQmw5LrbYOyEcgj6A+h2OkkBBlCpVQhO06H2YGVnUlLS/YlJKYE5F86HOXPnk/rlA8ec8ON9Xh843H64euky+PCNF6InBLhhn8EbpzFcXN/pXm7o6UmGlIR7VJL7UzYij5XwJTvOKdF9E4pfEYjT634jhJNLkL2QnVd2Q40Q4rZuh/kLl4AkclCxaycY9AZIiE/o21V8nAXhAAMhsl7vKnnfsdbmJpCGiRbQcj/k+FJCwgtoYGpNcfo6YkhIfOoXS29A+Y62yZIjtWtvbYLWplowxhke0xmMXRfNX8CmI+NCZiqlZWTjPAuwef0bNKUlwah7f/SoXNd4vXNmlYP/YPaCa180p2RqkZ1Sd5LIQGKiGTIy0sHtph2dakaXjL2jaOx442fr15HScoIRR0bilSTmOYSNERec47aii/iLbFvzRXW8KpyWlv4LnK0+YQ2eYVhDrSRlOCRgJFdw6CKI5zY2WtdEYpT+R72Qgrs8wq1dziBaIrhfjeMJkkz1kxct81KZRo0sLBwNVd+Q5iPsa+SZyD0kE5mTsX+OVgbn0MLG9TdgpVvvGi1R1C6WZd/4jpE50RL/hbZTZ+nRno9JLGTS1POIS3KCtaNJrTy/gaPlp4eGxmgt9UExHZI8OP7cC6Bs6myQaeMqErr2VKx46CFoC8SOrMSAgh6HIUc7mAGHlWXYTWTHkFhqnK86BL66q5b9GvILxzLWnm5pKDDSxhcIbD5XvCnlL7fddR+MKBgFJKDvk4YvAlB+/uVULta9/kK0ndgw8iCTcRaOYR4ZhQBVJ5fRpj+xhAToq/nVdx/5E13m9UqFYj3dkZY44GXErQ/1hwfI34kxQbcyFuYUPyQHqcIBZLAqvgZZZU1sJ25YN57MLX5PF7pbfyZMjZTZPnf2PEhOSafsMcquwkx6Zq407bw58O47b34668JLcC4KFU6nIxwFEYDU7CKcexLfE9HFFtE4aDf94VLjpju2S5CeM5J8h6tvIch6nzN9JpgQtD5Z9y5h2725I0b9cckvb6CbGA21R6CweCzkFRQyfp+fOX4jiRoLVrb9EgNsf0uJ3k2IHfxIwdMhpQHgdDn83Pf4xHAHwqMb6yxrcYG0P1VrDpKpvqOi6b7fvLztut+tq4LDXU7guZOOJRzVRQkys3MGOlcPQogIChuh/vOvXAYlk6ZTRkQuEoQ//+KfwZhxZ1FaHgoGqVtHX/j3SEQ6IcF2UEwL0Cojm1KDJJ2IpizDwDA/pqlLeeiapeaPonG0AZzmQMHzJOmKcZhLYdnKV0GnUpwglcMBRt/3kN8X//JGGFk0ljTVYI/zaumYyW5WEbpGy3/1G8jKziONNFjpFBUsCTubeuHlMPuyxTQmNny8Jhawh+Gfebj3R5ujDmxyDH4uhp6FFKlBoS80MAQsM3PzaYyJMKvJZ08jaTEw+BmJDJD8N61eT+NyUsxgafCZz55xAQRCQ8ILLAH/c849n8bBiMEToqgpDYQahvyTgpLVIyBDEqlLfzxoeD0eyM4rgFvvXAF33vsIXLLgSroLvOL3T0JJ6XiYWD6DnngYbj6ix3sk8EVidZNAgtPxOi0Ylh4RPTtFDkJAHNHV7vpYCItJ8JOeDmcoC9mxu+E/jZnGztmlGZ8mshJ4BxXeJxsFruNOBwpDgue06SUNyIKMh7kIVhcsuh58HtcQQSHJgYuX3oRKPhrqjx2lWcd9T37s6EFAawjsSQ53E0U6Scz1VFkYdHdIExcHHpttqNBGlZd0tgGdTkdzuf4RsSVKbzYnUcAdzoUmSpyFrPD2B1bRufL5vHDKlJG+uUblTEhM/REZP0fzzMiLDjAoQvmseXDl0uXQ2FCHxiUAKanpfc8pDZ5DkuS5+Lpb4MXnnoCG+nqIGDR0jUgsVMGrhoQYCACpNBoaD4xEvp8ONEI4fGKcCcd1/S13kN6KBPSHbBwRkOVxzCZzMjS2dJ6mMHWaAdbBVhvwLIyxdDs2Cd6Amfo8p8MVkZT2ht5PtjQ55+8qGvdJMDCgg2YmDNeEOiB0EjkjsQxjggmmzLwIxk6ZBfmEdSBYxRgASTijacyCKNJE0Clo/cqnz+6/n2znf7b+Pdiw7q8IWIrvd1dWFIa4hMOPP/JPCa8gnBpAiZISEP5HY4vBoD/mjip/0JriAX8AikrGwiOrnolm68d86ERUaMLwMrJy6c/7GNQJoIyAQdI+rlt+F3z8wTvQ29FCgeLk8yz+XazwX/Bb6JxrtQYQI8OzKxJPu+bGX4HD8xQwBxtBkIV/0rrtpz1grd1WA0ZOPk8bZ9hlMBn9ghChLs33QpX+Hm7b13zlxPcykhiR7d3bPNcb2beFbMT0vUON7P28MjVkJugRtE5UfpJPNH3BQpi7+CZwWS0QCgxR0r6KJ33b+6iQQ0/CE7dx3Flnw/bNG+lOFHua1CP6KS4yl1n5RZBIumPjXCpo2f4fRqHIWpDjLZoU7XFALERZaOS7t/j9yMCSkYHdePvd4HI4gOEYevZTikR+sjkUT8HECchq9Qa498FVIG5Khk83fAnOHoGCMnOayd1pAVhhFAaGV62cc04WzCpNgf/8pJpW0GSZHwOtYvELSToRrehvLIioMGLV7iG0z48uTVfOZMgxG07q1JCAt9fl6HMdjo97fedFjpEw/8ZANeDmBCElIxeW/eYxeO3pB8Bu66Vz84PRElLYLhw+mUiRmobamGiR3IAQDNQ4lwZAIESZoVqj6WeW3xv4IIuVItI/qxLDsjDiSpL+GNzcX8OKmTfCgX17wGCM709/OANYgy5ynooEmDVKDtLi1ZSCE9eC/RHTGU5KgRkp1qNNMXRXhcQ5uFOP758UqkEeaQTOXFRCKOPMHlkMYyZOhS8/fvcHBazvcLECMYBiYWgzhr5tSan/NRAX/N4ucoJg4ZVXQTgl91Sg2teQM3Lc+GQwUJatL1Un3BdHpK4pzjMxkiT9hLCyILJFhj199uYYSZLO6MOZ68x15vo/cZ0BrDPXmevM9X/m+l8BBgD3anWRdLvimAAAAABJRU5ErkJggg==" alt="PT. Gapura Angkasa" />
                                            <h4 class="header blue lighter bigger">
                                                <i class="icon-lock green"></i>
                                                Masukkan Data Login Anda
                                            </h4>

                                            <div class="space-6"></div>

                                            <form method="POST" action="<?= site_url() ?>/auth/login/">
                                                <fieldset>
                                                    <?php
                                                    if (strlen($this->session->userdata('error')) > 0) {
                                                        echo '<p style="font-weight:bold;color:red;">' . $this->session->userdata('error') . '</p>';
                                                        $this->session->unset_userdata('error');
                                                    }
                                                    ?>
                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right ">
                                                            <input type="text" class="form-control" placeholder="Username / e-mail" id="username" name="username" autocomplete="off" />
                                                            <i class="icon-user icon-animated-jumping-up"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <input type="password" class="form-control" placeholder="Kata Sandi" name="password" />
                                                            <i class="icon-lock icon-animated-jumping-up"></i>
                                                        </span>
                                                    </label>
                                                    <div class="toolbar clearfix" style="background-color: transparent; border-top: none;">
                                                        <div>
                                                            <a href="<?= site_url() . '/pengumuman/pendaftaran'; ?>" title="Pendaftaran Vendor" data-placement='bottom' rel='tooltip'>
                                                                <button class="btn btn-sm btn-primary" type="button">
                                                                    <i class="icon-plus-sign"></i>
                                                                    Pendaftaran
                                                                </button>
                                                            </a>
                                                        </div>
                                                        <div>
                                                            <button type="submit" class="pull-right btn btn-sm btn-primary" title="Masuk ke sistem" data-placement='bottom' rel='tooltip'>
                                                                <i class="icon-key"></i>
                                                                Login
                                                            </button>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                            </form>
                                        </div><!-- /widget-main -->

                                    </div><!-- /widget-body -->

                                    <h4 class="orange"><p> &copy; PT. Gapura Angkasa</h4>

                                </div><!-- /login-box -->

                                <div id="forgot-box" class="forgot-box widget-box no-border">
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <h4 class="header red lighter bigger">
                                                <i class="icon-key"></i>
                                                Reset Password
                                            </h4>

                                            <div class="space-6"></div>
                                            <p>
                                                Masukkan email Anda untuk menerima instruksi reset password
                                            </p>

                                            <form>
                                                <fieldset>
                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <input type="email" class="form-control" placeholder="Email" />
                                                            <i class="icon-envelope"></i>
                                                        </span>
                                                    </label>

                                                    <div class="clearfix">
                                                        <button type="button" class="width-35 pull-right btn btn-sm btn-danger">
                                                            <i class="icon-lightbulb"></i>
                                                            Kirim email
                                                        </button>
                                                    </div>
                                                </fieldset>
                                            </form>
                                        </div><!-- /widget-main -->
                                        
                                        <div class="toolbar center">
                                            <a href="#" onclick="show_box('login-box');
                                                    return false;" class="back-to-login-link">
                                                Kembali
                                                <i class="icon-arrow-right"></i>
                                            </a>
                                        </div>
                                    </div><!-- /widget-body -->
                                </div><!-- /forgot-box -->

                                <div id="signup-box" class="signup-box widget-box no-border">
                                    <div class="widget-body">
                                        <div class="widget-main">
                                            <h4 class="header green lighter bigger">
                                                <i class="icon-group blue"></i>
                                                Registrasi
                                            </h4>

                                            <div class="space-6"></div>
                                            <p> Masukkan data pribadi Anda: </p>

                                            <form>
                                                <fieldset>
                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <input type="email" class="form-control" placeholder="Email" />
                                                            <i class="icon-envelope"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <input type="text" class="form-control" placeholder="Username" />
                                                            <i class="icon-user"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <input type="password" class="form-control" placeholder="Password" />
                                                            <i class="icon-lock"></i>
                                                        </span>
                                                    </label>

                                                    <label class="block clearfix">
                                                        <span class="block input-icon input-icon-right">
                                                            <input type="password" class="form-control" placeholder="Ulangi password" />
                                                            <i class="icon-retweet"></i>
                                                        </span>
                                                    </label>

                                                    <div class="clearfix">
                                                        <button type="reset" class="width-30 pull-left btn btn-sm">
                                                            <i class="icon-refresh"></i>
                                                            Reset
                                                        </button>

                                                        <button type="button" class="width-65 pull-right btn btn-sm btn-success">
                                                            Register
                                                            <i class="icon-arrow-right icon-on-right"></i>
                                                        </button>
                                                    </div>
                                                </fieldset>
                                            </form>
                                        </div>

                                        <div class="toolbar center">
                                            <a href="#" onclick="show_box('login-box');
                                                    return false;" class="back-to-login-link">
                                                <i class="icon-arrow-left"></i>
                                                Kembali
                                            </a>
                                        </div>
                                    </div><!-- /widget-body -->
                                </div><!-- /signup-box -->
                            </div><!-- /position-relative -->
                        </div>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div>
        </div><!-- /.main-container -->

        <!-- basic scripts -->

        <!--[if !IE]> -->

        <script type="text/javascript">
            window.jQuery || document.write("<script src='<?= base_url() ?>assets/js/jquery-2.0.3.min.js'>" + "<" + "/script>");
        </script>

        <!-- <![endif]-->

        <!--[if IE]>
<script type="text/javascript">
window.jQuery || document.write("<script src='<?= base_url() ?>assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

        <script type="text/javascript">
            if ("ontouchend" in document)
                document.write("<script src='<?= base_url() ?>assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
        </script>
        <script src="<?= base_url() ?>assets/js/bootstrap.min.js"></script>
        <script language="javascript">
            $(document).ready(function() {
                $("[rel='tooltip']").tooltip();
            });
        </script>
        <!-- inline scripts related to this page -->

        <script type="text/javascript">
            $(function() {
                $("#username").focus();
            });
            function show_box(id) {
                jQuery('.widget-box.visible').removeClass('visible');
                jQuery('#' + id).addClass('visible');
            }
        </script>
    </body>
</html>
