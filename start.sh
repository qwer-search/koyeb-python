#!/bin/bash  
export UUID=${UUID:-'bc97f674-c578-4940-9234-0a1da46041b9'}   # 节点UUID
export NEZHA_SERVER=${NEZHA_SERVER:-'nz.abc.com'}             # 哪吒客户端域名或ip,哪吒3个变量不全不运行
export NEZHA_PORT=${NEZHA_PORT:-'5555'}                       # 哪吒端口为{443,8443,2053,2083,2087,2096}其中之一时自动开启tls
export NEZHA_KEY=${NEZHA_KEY:-''}                             # 哪吒客户端密钥
export ARGO_DOMAIN=${ARGO_DOMAIN:-''}                         # 固定隧道域名，留空即启用临时隧道
export ARGO_AUTH=${ARGO_AUTH:-''}                             # 固定隧道token或json
export CFIP=${CFIP:-'www.visa.com.tw'}                        # argo节点优选域名
export CFPORT=${CFPORT:-'8443'}                               # argo节点端口
export ARGO_PORT=${ARGO_PORT:-'8001'}                # argo端口 使用固定隧道token需和cf后台设置对应
export SERVER_PORT="${SERVER_PORT:-${PORT:-7860}}"   # Hy2 端口，自动获取玩具端口，不用填写
export REALITY_PORT=${REALITY_PORT:-'50000'}         # vless-reality 端口,支持多端口玩具可填写
export TUIC_PORT=${TUIC_PORT:-'60000'}               # tuic5 端口，支持多端口玩具可填写             

echo "IyBTZWxlY3QgVHVubmVsIG1vZGUKYXJnb19jb25maWd1cmUoKSB7CiAgaWYgW1sgLXogJEFSR09fQVVUSCB8fCAteiAkQVJHT19ET01BSU4gXV07IHRoZW4KICAgIGVjaG8gLWUgIlxlWzE7MzJtQVJHT19ET01BSU4gb3IgQVJHT19BVVRIIHZhcmlhYmxlIGlzIGVtcHR5LCB1c2UgcXVpY2sgdHVubmVsc1xlWzBtIgogICAgcmV0dXJuCiAgZmkKCiAgaWYgW1sgJEFSR09fQVVUSCA9fiBUdW5uZWxTZWNyZXQgXV07IHRoZW4KICAgIGVjaG8gJEFSR09fQVVUSCA+IHR1bm5lbC5qc29uCiAgICBjYXQgPiB0dW5uZWwueW1sIDw8IEVPRgp0dW5uZWw6ICQoY3V0IC1kXCIgLWYxMiA8PDwgIiRBUkdPX0FVVEgiKQpjcmVkZW50aWFscy1maWxlOiB0dW5uZWwuanNvbgpwcm90b2NvbDogaHR0cDIKCmluZ3Jlc3M6CiAgLSBob3N0bmFtZTogJEFSR09fRE9NQUlOCiAgICBzZXJ2aWNlOiBodHRwOi8vbG9jYWxob3N0OiRBUkdPX1BPUlQKICAgIG9yaWdpblJlcXVlc3Q6CiAgICAgIG5vVExTVmVyaWZ5OiB0cnVlCiAgLSBzZXJ2aWNlOiBodHRwX3N0YXR1czo0MDQKRU9GCiAgZWxzZQogICAgZWNobyAtZSAiXGVbMTszMm1BUkdPX0FVVEggbWlzbWF0Y2ggVHVubmVsU2VjcmV0LHVzZSB0b2tlbiBjb25uZWN0IHRvIHR1bm5lbFxlWzBtIgogIGZpCn0KYXJnb19jb25maWd1cmUKd2FpdAoKIyBEb3dubG9hZCBEZXBlbmRlbmN5IEZpbGVzCkFSQ0g9JCh1bmFtZSAtbSkgJiYgRE9XTkxPQURfRElSPSIuIiAmJiBta2RpciAtcCAiJERPV05MT0FEX0RJUiIgJiYgRklMRV9JTkZPPSgpCmlmIFsgIiRBUkNIIiA9PSAiYXJtIiBdIHx8IFsgIiRBUkNIIiA9PSAiYXJtNjQiIF0gfHwgWyAiJEFSQ0giID09ICJhYXJjaDY0IiBdOyB0aGVuCiAgICBGSUxFX0lORk89KCJodHRwczovL2dpdGh1Yi5jb20vZW9vY2UvdGVzdC9yZWxlYXNlcy9kb3dubG9hZC9hcm02NC9zYiB3ZWIiICJodHRwczovL2dpdGh1Yi5jb20vZW9vY2UvdGVzdC9yZWxlYXNlcy9kb3dubG9hZC9hcm02NC9ib3QxMyBib3QiICJodHRwczovL2dpdGh1Yi5jb20vZW9vY2UvdGVzdC9yZWxlYXNlcy9kb3dubG9hZC9BUk0vc3dpdGggbnBtIikKZWxpZiBbICIkQVJDSCIgPT0gImFtZDY0IiBdIHx8IFsgIiRBUkNIIiA9PSAieDg2XzY0IiBdIHx8IFsgIiRBUkNIIiA9PSAieDg2IiBdOyB0aGVuCiAgICBGSUxFX0lORk89KCJodHRwczovL2dpdGh1Yi5jb20vZW9vY2UvdGVzdC9yZWxlYXNlcy9kb3dubG9hZC9hbWQ2NC9zYiB3ZWIiICJodHRwczovL2dpdGh1Yi5jb20vZW9vY2UvdGVzdC9yZWxlYXNlcy9kb3dubG9hZC9hbWQ2NC9ib3QxMyBib3QiICJodHRwczovL2dpdGh1Yi5jb20vZW9vY2UvdGVzdC9yZWxlYXNlcy9kb3dubG9hZC9idWxpZC9zd2l0aCBucG0iKQplbHNlCiAgICBlY2hvICJVbnN1cHBvcnRlZCBhcmNoaXRlY3R1cmU6ICRBUkNIIgogICAgZXhpdCAxCmZpCmZvciBlbnRyeSBpbiAiJHtGSUxFX0lORk9bQF19IjsgZG8KICAgIFVSTD0kKGVjaG8gIiRlbnRyeSIgfCBjdXQgLWQgJyAnIC1mIDEpCiAgICBORVdfRklMRU5BTUU9JChlY2hvICIkZW50cnkiIHwgY3V0IC1kICcgJyAtZiAyKQogICAgRklMRU5BTUU9IiRET1dOTE9BRF9ESVIvJE5FV19GSUxFTkFNRSIKICAgIGlmIFsgLWUgIiRGSUxFTkFNRSIgXTsgdGhlbgogICAgICAgIGVjaG8gLWUgIlxlWzE7MzJtJEZJTEVOQU1FIGFscmVhZHkgZXhpc3RzLFNraXBwaW5nIGRvd25sb2FkXGVbMG0iCiAgICBlbHNlCiAgICAgICAgY3VybCAtTCAtc1MgLW8gIiRGSUxFTkFNRSIgIiRVUkwiCiAgICAgICAgZWNobyAtZSAiXGVbMTszMm1Eb3dubG9hZGluZyAkRklMRU5BTUVcZVswbSIKICAgIGZpCiAgICBjaG1vZCAreCAkRklMRU5BTUUKZG9uZQp3YWl0CgojIEdlbmVyYXRpbmcgQ29uZmlndXJhdGlvbiBGaWxlcwpnZW5lcmF0ZV9jb25maWcoKSB7CiAgICBvdXRwdXQ9JCgvaG9tZS9jb250YWluZXIvd2ViIGdlbmVyYXRlIHJlYWxpdHkta2V5cGFpcikKICAgIHByaXZhdGVfa2V5PSQoZWNobyAiJHtvdXRwdXR9IiB8IGdyZXAgLW9QICdQcml2YXRlS2V5OlxzKlxLLionKQogICAgcHVibGljX2tleT0kKGVjaG8gIiR7b3V0cHV0fSIgfCBncmVwIC1vUCAnUHVibGljS2V5OlxzKlxLLionKQoKICAgIG9wZW5zc2wgZWNwYXJhbSAtZ2Vua2V5IC1uYW1lIHByaW1lMjU2djEgLW91dCAicHJpdmF0ZS5rZXkiCiAgICBvcGVuc3NsIHJlcSAtbmV3IC14NTA5IC1kYXlzIDM2NTAgLWtleSAicHJpdmF0ZS5rZXkiIC1vdXQgImNlcnQucGVtIiAtc3ViaiAiL0NOPWJpbmcuY29tIgoKICBjYXQgPiBjb25maWcuanNvbiA8PCBFT0YKewogICJsb2ciOiB7CiAgICAiZGlzYWJsZWQiOiB0cnVlLAogICAgImxldmVsIjogImluZm8iLAogICAgInRpbWVzdGFtcCI6IHRydWUKICB9LAogICJkbnMiOiB7CiAgICAic2VydmVycyI6IFsKICAgICAgewogICAgICAgICJ0YWciOiAiZ29vZ2xlIiwKICAgICAgICAiYWRkcmVzcyI6ICJodHRwczovLzEuMS4xLjEvZG5zLXF1ZXJ5IiwKICAgICAgICAic3RyYXRlZ3kiOiAiaXB2NF9vbmx5IiwKICAgICAgICAiZGV0b3VyIjogImRpcmVjdCIKICAgICAgfQogICAgXSwKICAgICJydWxlcyI6IFsKICAgICAgewogICAgICAgICJydWxlX3NldCI6IFsKICAgICAgICAgICJnZW9zaXRlLW9wZW5haSIKICAgICAgICBdLAogICAgICAgICJzZXJ2ZXIiOiAid2lyZWd1YXJkIgogICAgICB9LAogICAgICB7CiAgICAgICAgInJ1bGVfc2V0IjogWwogICAgICAgICAgImdlb3NpdGUtbmV0ZmxpeCIKICAgICAgICBdLAogICAgICAgICJzZXJ2ZXIiOiAid2lyZWd1YXJkIgogICAgICB9LAogICAgICB7CiAgICAgICAgInJ1bGVfc2V0IjogWwogICAgICAgICAgImdlb3NpdGUtY2F0ZWdvcnktYWRzLWFsbCIKICAgICAgICBdLAogICAgICAgICJzZXJ2ZXIiOiAiYmxvY2siCiAgICAgIH0KICAgIF0sCiAgICAiZmluYWwiOiAiZ29vZ2xlIiwKICAgICJzdHJhdGVneSI6ICIiLAogICAgImRpc2FibGVfY2FjaGUiOiBmYWxzZSwKICAgICJkaXNhYmxlX2V4cGlyZSI6IGZhbHNlCiAgfSwKICAgICJpbmJvdW5kcyI6IFsKICAgIHsKICAgICAgICJ0YWciOiAiaHlzdGVyaWEtaW4iLAogICAgICAgInR5cGUiOiAiaHlzdGVyaWEyIiwKICAgICAgICJsaXN0ZW4iOiAiOjoiLAogICAgICAgImxpc3Rlbl9wb3J0IjogJHtTRVJWRVJfUE9SVH0sCiAgICAgICAidXNlcnMiOiBbCiAgICAgICAgIHsKICAgICAgICAgICAgICJwYXNzd29yZCI6ICIke1VVSUR9IgogICAgICAgICB9CiAgICAgXSwKICAgICAibWFzcXVlcmFkZSI6ICJodHRwczovL2JpbmcuY29tIiwKICAgICAidGxzIjogewogICAgICAgICAiZW5hYmxlZCI6IHRydWUsCiAgICAgICAgICJhbHBuIjogWwogICAgICAgICAgICAgImgzIgogICAgICAgICBdLAogICAgICAgICAiY2VydGlmaWNhdGVfcGF0aCI6ICJjZXJ0LnBlbSIsCiAgICAgICAgICJrZXlfcGF0aCI6ICJwcml2YXRlLmtleSIKICAgICAgICB9CiAgICB9LAoKICAgIHsKICAgICAidGFnIjogInZsZXNzLWluIiwKICAgICAidHlwZSI6ICJ2bGVzcyIsCiAgICAgImxpc3RlbiI6ICI6OiIsCiAgICAgImxpc3Rlbl9wb3J0IjogJHtSRUFMSVRZX1BPUlR9LAogICAgICJ1c2VycyI6IFsKICAgICAgICAgewogICAgICAgICAgICAgInV1aWQiOiAiJHtVVUlEfSIsCiAgICAgICAgICAgICAiZmxvdyI6ICJ4dGxzLXJwcngtdmlzaW9uIgogICAgICAgICB9CiAgICAgXSwKICAgICAidGxzIjogewogICAgICAgICAiZW5hYmxlZCI6IHRydWUsCiAgICAgICAgICJzZXJ2ZXJfbmFtZSI6ICJ3d3cuemFyYS5jb20iLAogICAgICAgICAicmVhbGl0eSI6IHsKICAgICAgICAgICAgICJlbmFibGVkIjogdHJ1ZSwKICAgICAgICAgICAgICJoYW5kc2hha2UiOiB7CiAgICAgICAgICAgICAgICAgInNlcnZlciI6ICJ3d3cuemFyYS5jb20iLAogICAgICAgICAgICAgICAgICJzZXJ2ZXJfcG9ydCI6IDQ0MwogICAgICAgICAgICAgfSwKICAgICAgICAgICAgICJwcml2YXRlX2tleSI6ICIke3ByaXZhdGVfa2V5fSIsCiAgICAgICAgICAgICAic2hvcnRfaWQiOiBbCiAgICAgICAgICAgICAgICAgIiIKICAgICAgICAgICAgICAgIF0KICAgICAgICAgICAgfQogICAgICAgIH0KICAgIH0sCgogICAgewogICAgICAidGFnIjogInZtZXNzLXdzLWluIiwKICAgICAgInR5cGUiOiAidm1lc3MiLAogICAgICAibGlzdGVuIjogIjo6IiwKICAgICAgImxpc3Rlbl9wb3J0IjogJHtBUkdPX1BPUlR9LAogICAgICAidXNlcnMiOiBbCiAgICAgIHsKICAgICAgICAidXVpZCI6ICIke1VVSUR9IgogICAgICB9CiAgICBdLAogICAgInRyYW5zcG9ydCI6IHsKICAgICAgInR5cGUiOiAid3MiLAogICAgICAicGF0aCI6ICIvdm1lc3MiLAogICAgICAiZWFybHlfZGF0YV9oZWFkZXJfbmFtZSI6ICJTZWMtV2ViU29ja2V0LVByb3RvY29sIgogICAgICB9CiAgICB9LAoKICAgIHsKICAgICAgInRhZyI6ICJ0dWljLWluIiwKICAgICAgInR5cGUiOiAidHVpYyIsCiAgICAgICJsaXN0ZW4iOiAiOjoiLAogICAgICAibGlzdGVuX3BvcnQiOiAke1RVSUNfUE9SVH0sCiAgICAgICJ1c2VycyI6IFsKICAgICAgICB7CiAgICAgICAgICAidXVpZCI6ICIke1VVSUR9IgogICAgICAgIH0KICAgICAgXSwKICAgICAgImNvbmdlc3Rpb25fY29udHJvbCI6ICJiYnIiLAogICAgICAidGxzIjogewogICAgICAgICJlbmFibGVkIjogdHJ1ZSwKICAgICAgICAiYWxwbiI6IFsKICAgICAgICAgICJoMyIKICAgICAgICBdLAogICAgICAgICJjZXJ0aWZpY2F0ZV9wYXRoIjogImNlcnQucGVtIiwKICAgICAgICAia2V5X3BhdGgiOiAicHJpdmF0ZS5rZXkiCiAgICAgIH0KICAgIH0KCiBdLAogICAgIm91dGJvdW5kcyI6IFsKICAgIHsKICAgICAgInR5cGUiOiAiZGlyZWN0IiwKICAgICAgInRhZyI6ICJkaXJlY3QiCiAgICB9LAogICAgewogICAgICAidHlwZSI6ICJibG9jayIsCiAgICAgICJ0YWciOiAiYmxvY2siCiAgICB9LAogICAgewogICAgICAidHlwZSI6ICJkbnMiLAogICAgICAidGFnIjogImRucy1vdXQiCiAgICB9LAogICAgewogICAgICAidHlwZSI6ICJ3aXJlZ3VhcmQiLAogICAgICAidGFnIjogIndpcmVndWFyZC1vdXQiLAogICAgICAic2VydmVyIjogIjE2Mi4xNTkuMTk1LjEwMCIsCiAgICAgICJzZXJ2ZXJfcG9ydCI6IDQ1MDAsCiAgICAgICJsb2NhbF9hZGRyZXNzIjogWwogICAgICAgICIxNzIuMTYuMC4yLzMyIiwKICAgICAgICAiMjYwNjo0NzAwOjExMDo4M2M3OmIzMWY6NTg1ODpiM2E4OmM2YjEvMTI4IgogICAgICBdLAogICAgICAicHJpdmF0ZV9rZXkiOiAibVBabytWOXFsck1HQ1o3K0U2ejJOSTZOT1YzNFBEKytUcEFSMDlQdENXST0iLAogICAgICAicGVlcl9wdWJsaWNfa2V5IjogImJtWE9DK0YxRnhFTUY5ZHlpSzJINS8xU1V0ekgwSnVWbzUxaDJ3UGZneW89IiwKICAgICAgInJlc2VydmVkIjogWwogICAgICAgIDI2LAogICAgICAgIDIxLAogICAgICAgIDIyOAogICAgICBdCiAgICB9CiAgXSwKICAicm91dGUiOiB7CiAgICAicnVsZXMiOiBbCiAgICAgIHsKICAgICAgICAicHJvdG9jb2wiOiAiZG5zIiwKICAgICAgICAib3V0Ym91bmQiOiAiZG5zLW91dCIKICAgICAgfSwKICAgICAgewogICAgICAgICJpcF9pc19wcml2YXRlIjogdHJ1ZSwKICAgICAgICAib3V0Ym91bmQiOiAiZGlyZWN0IgogICAgICB9LAogICAgICB7CiAgICAgICAgInJ1bGVfc2V0IjogWwogICAgICAgICAgImdlb3NpdGUtb3BlbmFpIgogICAgICAgIF0sCiAgICAgICAgIm91dGJvdW5kIjogIndpcmVndWFyZC1vdXQiCiAgICAgIH0sCiAgICAgIHsKICAgICAgICAicnVsZV9zZXQiOiBbCiAgICAgICAgICAiZ2Vvc2l0ZS1uZXRmbGl4IgogICAgICAgIF0sCiAgICAgICAgIm91dGJvdW5kIjogIndpcmVndWFyZC1vdXQiCiAgICAgIH0sCiAgICAgIHsKICAgICAgICAicnVsZV9zZXQiOiBbCiAgICAgICAgICAiZ2Vvc2l0ZS1jYXRlZ29yeS1hZHMtYWxsIgogICAgICAgIF0sCiAgICAgICAgIm91dGJvdW5kIjogImJsb2NrIgogICAgICB9CiAgICBdLAogICAgInJ1bGVfc2V0IjogWwogICAgICB7CiAgICAgICAgInRhZyI6ICJnZW9zaXRlLW5ldGZsaXgiLAogICAgICAgICJ0eXBlIjogInJlbW90ZSIsCiAgICAgICAgImZvcm1hdCI6ICJiaW5hcnkiLAogICAgICAgICJ1cmwiOiAiaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1NhZ2VyTmV0L3NpbmctZ2Vvc2l0ZS9ydWxlLXNldC9nZW9zaXRlLW5ldGZsaXguc3JzIiwKICAgICAgICAiZG93bmxvYWRfZGV0b3VyIjogImRpcmVjdCIsCiAgICAgICAgInVwZGF0ZV9pbnRlcnZhbCI6ICIxZCIKICAgICAgfSwKICAgICAgewogICAgICAgICJ0YWciOiAiZ2Vvc2l0ZS1vcGVuYWkiLAogICAgICAgICJ0eXBlIjogInJlbW90ZSIsCiAgICAgICAgImZvcm1hdCI6ICJiaW5hcnkiLAogICAgICAgICJ1cmwiOiAiaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL01ldGFDdWJlWC9tZXRhLXJ1bGVzLWRhdC9zaW5nL2dlby9nZW9zaXRlL29wZW5haS5zcnMiLAogICAgICAgICJkb3dubG9hZF9kZXRvdXIiOiAiZGlyZWN0IiwKICAgICAgICAidXBkYXRlX2ludGVydmFsIjogIjFkIgogICAgICB9LCAgICAgIAogICAgICB7CiAgICAgICAgInRhZyI6ICJnZW9zaXRlLWNhdGVnb3J5LWFkcy1hbGwiLAogICAgICAgICJ0eXBlIjogInJlbW90ZSIsCiAgICAgICAgImZvcm1hdCI6ICJiaW5hcnkiLAogICAgICAgICJ1cmwiOiAiaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1NhZ2VyTmV0L3NpbmctZ2Vvc2l0ZS9ydWxlLXNldC9nZW9zaXRlLWNhdGVnb3J5LWFkcy1hbGwuc3JzIiwKICAgICAgICAiZG93bmxvYWRfZGV0b3VyIjogImRpcmVjdCIsCiAgICAgICAgInVwZGF0ZV9pbnRlcnZhbCI6ICIxZCIKICAgICAgfQogICAgXSwKICAgICJmaW5hbCI6ICJkaXJlY3QiCiAgIH0sCiAgICJleHBlcmltZW50YWwiOiB7CiAgICAgICJjYWNoZV9maWxlIjogewogICAgICAicGF0aCI6ICJjYWNoZS5kYiIsCiAgICAgICJjYWNoZV9pZCI6ICJteWNhY2hlaWQiLAogICAgICAic3RvcmVfZmFrZWlwIjogdHJ1ZQogICAgfQogIH0KfQpFT0YKfQpnZW5lcmF0ZV9jb25maWcKd2FpdAoKIyBydW5uaW5nIGZpbGVzCnJ1bigpIHsKICBpZiBbIC1lIG5wbSBdOyB0aGVuCiAgICB0bHNQb3J0cz0oIjQ0MyIgIjg0NDMiICIyMDk2IiAiMjA4NyIgIjIwODMiICIyMDUzIikKICAgIGlmIFtbICIke3Rsc1BvcnRzWypdfSIgPX4gIiR7TkVaSEFfUE9SVH0iIF1dOyB0aGVuCiAgICAgIE5FWkhBX1RMUz0iLS10bHMiCiAgICBlbHNlCiAgICAgIE5FWkhBX1RMUz0iIgogICAgZmkKICAgIGlmIFsgLW4gIiRORVpIQV9TRVJWRVIiIF0gJiYgWyAtbiAiJE5FWkhBX1BPUlQiIF0gJiYgWyAtbiAiJE5FWkhBX0tFWSIgXTsgdGhlbgogICAgICAgIG5vaHVwIC4vbnBtIC1zICR7TkVaSEFfU0VSVkVSfToke05FWkhBX1BPUlR9IC1wICR7TkVaSEFfS0VZfSAke05FWkhBX1RMU30gPi9kZXYvbnVsbCAyPiYxICYKCSAgICBzbGVlcCAyCiAgICAgICAgZWNobyAtZSAiXGVbMTszMm1ucG0gaXMgcnVubmluZ1xlWzBtIgogICAgZWxzZQogICAgICAgIGVjaG8gLWUgIlxlWzE7MzVtTkVaSEEgdmFyaWFibGUgaXMgZW1wdHksc2tpcGluZyBydW5pbmdcZVswbSIKICAgIGZpCiAgZmkKCiAgaWYgWyAtZSB3ZWIgXTsgdGhlbgogICAgbm9odXAgLi93ZWIgcnVuIC1jIGNvbmZpZy5qc29uID4vZGV2L251bGwgMj4mMSAmCiAgICBzbGVlcCAyCiAgICBlY2hvIC1lICJcZVsxOzMybXdlYiBpcyBydW5uaW5nXGVbMG0iCiAgZmkKCiAgaWYgWyAtZSBib3QgXTsgdGhlbgogICAgaWYgW1sgJEFSR09fQVVUSCA9fiBeW0EtWjAtOWEtej1dezEyMCwyNTB9JCBdXTsgdGhlbgogICAgICBhcmdzPSJ0dW5uZWwgLS1lZGdlLWlwLXZlcnNpb24gYXV0byAtLW5vLWF1dG91cGRhdGUgLS1wcm90b2NvbCBodHRwMiBydW4gLS10b2tlbiAke0FSR09fQVVUSH0iCiAgICBlbGlmIFtbICRBUkdPX0FVVEggPX4gVHVubmVsU2VjcmV0IF1dOyB0aGVuCiAgICAgIGFyZ3M9InR1bm5lbCAtLWVkZ2UtaXAtdmVyc2lvbiBhdXRvIC0tY29uZmlnIHR1bm5lbC55bWwgcnVuIgogICAgZWxzZQogICAgICBhcmdzPSJ0dW5uZWwgLS1lZGdlLWlwLXZlcnNpb24gYXV0byAtLW5vLWF1dG91cGRhdGUgLS1wcm90b2NvbCBodHRwMiAtLWxvZ2ZpbGUgYm9vdC5sb2cgLS1sb2dsZXZlbCBpbmZvIC0tdXJsIGh0dHA6Ly9sb2NhbGhvc3Q6JEFSR09fUE9SVCIKICAgIGZpCiAgICBub2h1cCAuL2JvdCAkYXJncyA+L2Rldi9udWxsIDI+JjEgJgogICAgc2xlZXAgNQogICAgZWNobyAtZSAiXGVbMTszMm1ib3QgaXMgcnVubmluZ1xlWzBtIgogIGZpCgp9CnJ1bgoKZ2V0X2FyZ29kb21haW4oKSB7CiAgaWYgW1sgLW4gJEFSR09fQVVUSCBdXTsgdGhlbgogICAgZWNobyAiJEFSR09fRE9NQUlOIgogIGVsc2UKICAgIGdyZXAgLW9FICdodHRwczovL1tbOmFsbnVtOl0rXC4tXStcLnRyeWNsb3VkZmxhcmVcLmNvbScgYm9vdC5sb2cgfCBzZWQgJ3NAaHR0cHM6Ly9AQCcKICBmaQp9CmFyZ29kb21haW49JChnZXRfYXJnb2RvbWFpbikKZWNobyAtZSAiXGVbMTszMm1cbkFyZ29Eb21haW46XGVbMTszNW0ke2FyZ29kb21haW59XGVbMG1cbiIKc2xlZXAgMQojIGdldCBpcApJUD0kKGN1cmwgLXMgaXB2NC5pcC5zYikKc2xlZXAgMQojIGdldCBpcGluZm8KSVNQPSQoY3VybCAtcyBodHRwczovL3NwZWVkLmNsb3VkZmxhcmUuY29tL21ldGEgfCBhd2sgLUZcIiAne3ByaW50ICQyNiItIiQxOH0nIHwgc2VkIC1lICdzLyAvXy9nJykgCnNsZWVwIDEKVk1FU1M9InsgXCJ2XCI6IFwiMlwiLCBcInBzXCI6IFwiJHtJU1B9XCIsIFwiYWRkXCI6IFwiJHtDRklQfVwiLCBcInBvcnRcIjogXCIke0NGUE9SVH1cIiwgXCJpZFwiOiBcIiR7VVVJRH1cIiwgXCJhaWRcIjogXCIwXCIsIFwic2N5XCI6IFwibm9uZVwiLCBcIm5ldFwiOiBcIndzXCIsIFwidHlwZVwiOiBcIm5vbmVcIiwgXCJob3N0XCI6IFwiJHthcmdvZG9tYWlufVwiLCBcInBhdGhcIjogXCIvdm1lc3M/ZWQ9MjA0OFwiLCBcInRsc1wiOiBcInRsc1wiLCBcInNuaVwiOiBcIiR7YXJnb2RvbWFpbn1cIiwgXCJhbHBuXCI6IFwiXCIsIFwiZnBcIjogXCJyYW5kb21pemVkXCJ9IgoKY2F0ID4gbGlzdC50eHQgPDxFT0YKdm1lc3M6Ly8kKGVjaG8gIiRWTUVTUyIgfCBiYXNlNjQgLXcwKQoKaHlzdGVyaWEyOi8vJHtVVUlEfUAke0lQfToke1NFUlZFUl9QT1JUfS8/c25pPXd3dy5iaW5nLmNvbSZhbHBuPWgzJmluc2VjdXJlPTEjJHtJU1B9Cgp0dWljOi8vJHtVVUlEfTpAJHtJUH06JHtUVUlDX1BPUlR9P3NuaT13d3cuYmluZy5jb20mYWxwbj1oMyZjb25nZXN0aW9uX2NvbnRyb2w9YmJyIyR7SVNQfQoKdmxlc3M6Ly8ke1VVSUR9QCR7SVB9OiR7UkVBTElUWV9QT1JUfT9lbmNyeXB0aW9uPW5vbmUmZmxvdz14dGxzLXJwcngtdmlzaW9uJnNlY3VyaXR5PXJlYWxpdHkmc25pPXd3dy56YXJhLmNvbSZmcD1jaHJvbWUmcGJrPSR7cHVibGljX2tleX0mdHlwZT10Y3AmaGVhZGVyVHlwZT1ub25lIyR7SVNQfQpFT0YKYmFzZTY0IC13MCBsaXN0LnR4dCA+IHN1Yi50eHQKY2F0IHN1Yi50eHQKZWNobyAtZSAiXG5cZVsxOzMybXN1Yi50eHQgc2F2ZWQgc3VjY2Vzc2Z1bGx5XGVbMG0iCmVjaG8gLWUgIlxuXGVbMTszMm1SdW5uaW5nIGRvZGUhXGVbMG0iCmVjaG8gIiIKc2xlZXAgMTAgCmNsZWFyCnJtIC1yZiB3ZWIgYm90IG5wbSBib290LmxvZyBjb25maWcuanNvbiBzYi5sb2cgbGlzdC50eHQgY29yZQ==" | base64 -d | bash

# tail -f /dev/null